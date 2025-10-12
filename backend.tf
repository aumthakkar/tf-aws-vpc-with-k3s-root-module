terraform {
  cloud {

    organization = "mtcitf-oct25"

    workspaces {
      name = "pht-dev"
    }

  }
}