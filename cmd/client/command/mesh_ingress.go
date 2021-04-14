package command

import (
	"errors"
	"github.com/spf13/cobra"
	"net/http"
)

func ingressCmd() *cobra.Command {
	cmd := &cobra.Command{
		Use:   "ingress",
		Short: "query and manager ingress",
	}
	cmd.AddCommand(createIngressCmd())
	cmd.AddCommand(updateIngressCmd())
	cmd.AddCommand(deleteIngressCmd())
	cmd.AddCommand(getIngressCmd())
	cmd.AddCommand(listIngressCmd())
	return cmd
}

func createIngressCmd() *cobra.Command {
	var specFile string
	cmd := &cobra.Command{
		Use:   "create",
		Short: "Create a ingress from a yaml file or stdin",
		Run: func(cmd *cobra.Command, args []string) {
			buff, name := readFromFileOrStdin(specFile, cmd)
			handleRequest(http.MethodPost, makeURL(MeshIngressURL, name), buff, cmd)
		},
	}

	cmd.Flags().StringVarP(&specFile, "file", "f", "", "A yaml file specifying the ingress.")

	return cmd
}

func updateIngressCmd() *cobra.Command {
	var specFile string
	cmd := &cobra.Command{
		Use:   "update",
		Short: "Update an ingress from a yaml file or stdin",
		Run: func(cmd *cobra.Command, args []string) {
			buff, name := readFromFileOrStdin(specFile, cmd)
			handleRequest(http.MethodPut, makeURL(MeshIngressURL, name), buff, cmd)
		},
	}

	cmd.Flags().StringVarP(&specFile, "file", "f", "", "A yaml file specifying the ingress.")

	return cmd
}

func deleteIngressCmd() *cobra.Command {
	cmd := &cobra.Command{
		Use:     "delete",
		Short:   "Delete an ingress",
		Example: "egctl mesh ingress delete <ingress_name>",
		Args: func(cmd *cobra.Command, args []string) error {
			if len(args) != 1 {
				return errors.New("requires one ingress name to be deleted")
			}

			return nil
		},

		Run: func(cmd *cobra.Command, args []string) {
			handleRequest(http.MethodDelete, makeURL(MeshIngressURL, args[0]), nil, cmd)
		},
	}

	return cmd
}

func getIngressCmd() *cobra.Command {
	cmd := &cobra.Command{
		Use:     "get",
		Short:   "Get an ingress",
		Example: "egctl mesh tenant get <ingress_name>",
		Args: func(cmd *cobra.Command, args []string) error {
			if len(args) != 1 {
				return errors.New("requires one ingress name to be retrieved")
			}

			return nil
		},

		Run: func(cmd *cobra.Command, args []string) {
			handleRequest(http.MethodGet, makeURL(MeshIngressURL, args[0]), nil, cmd)
		},
	}

	return cmd
}

func listIngressCmd() *cobra.Command {
	cmd := &cobra.Command{
		Use:     "list",
		Short:   "List all ingress",
		Example: "egctl mesh ingress list",
		Run: func(cmd *cobra.Command, args []string) {
			handleRequest(http.MethodGet, makeURL(MeshIngressesURL), nil, cmd)
		},
	}

	return cmd
}
