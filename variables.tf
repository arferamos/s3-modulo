variable "sigla" {
  description = "Sigla do sistema ou produto"
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9-]{2,10}$", var.sigla))
    error_message = "A sigla deve conter de 2 a 10 caracteres, usando letras, números ou hífen."
  }
}

variable "environment" {
  description = "Ambiente do recurso"
  type        = string

  validation {
    condition     = contains(["dev", "hml", "prd"], var.environment)
    error_message = "O environment deve ser dev, hml ou prd."
  }
}

variable "application" {
  description = "Nome da aplicação"
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9-]{3,30}$", var.application))
    error_message = "A aplicação deve conter de 3 a 30 caracteres, usando letras, números ou hífen."
  }
}

variable "purpose" {
  description = "Finalidade do bucket"
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9-]{3,30}$", var.purpose))
    error_message = "A finalidade deve conter de 3 a 30 caracteres, usando letras, números ou hífen."
  }
}

variable "owner" {
  description = "Responsável pelo recurso"
  type        = string
}

variable "force_destroy" {
  description = "Permite destruir o bucket mesmo com objetos dentro"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags adicionais"
  type        = map(string)
  default     = {}
}