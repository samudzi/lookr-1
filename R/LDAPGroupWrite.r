# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' LDAPGroupWrite Class
#'
#' @field name 
#' @field role_ids 
#' @field url 
#' @field can 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LDAPGroupWrite <- R6::R6Class(
  'LDAPGroupWrite',
  public = list(
    `name` = NULL,
    `role_ids` = NULL,
    `url` = NULL,
    `can` = NULL,
    initialize = function(`name`, `role_ids`, `url`, `can`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`role_ids`)) {
        stopifnot(is.list(`role_ids`), length(`role_ids`) != 0)
        lapply(`role_ids`, function(x) stopifnot(is.character(x)))
        self$`role_ids` <- `role_ids`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
    },
    toJSON = function() {
      LDAPGroupWriteObject <- list()
      if (!is.null(self$`name`)) {
        LDAPGroupWriteObject[['name']] <- self$`name`
      }
      if (!is.null(self$`role_ids`)) {
        LDAPGroupWriteObject[['role_ids']] <- self$`role_ids`
      }
      if (!is.null(self$`url`)) {
        LDAPGroupWriteObject[['url']] <- self$`url`
      }
      if (!is.null(self$`can`)) {
        LDAPGroupWriteObject[['can']] <- self$`can`
      }

      LDAPGroupWriteObject
    },
    fromJSON = function(LDAPGroupWriteJson) {
      LDAPGroupWriteObject <- jsonlite::fromJSON(LDAPGroupWriteJson)
      if (!is.null(LDAPGroupWriteObject$`name`)) {
        self$`name` <- LDAPGroupWriteObject$`name`
      }
      if (!is.null(LDAPGroupWriteObject$`role_ids`)) {
        self$`role_ids` <- LDAPGroupWriteObject$`role_ids`
      }
      if (!is.null(LDAPGroupWriteObject$`url`)) {
        self$`url` <- LDAPGroupWriteObject$`url`
      }
      if (!is.null(LDAPGroupWriteObject$`can`)) {
        self$`can` <- LDAPGroupWriteObject$`can`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "role_ids": [%s],
           "url": %s,
           "can": %s
        }',
        self$`name`,
        lapply(self$`role_ids`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`url`,
        self$`can`
      )
    },
    fromJSONString = function(LDAPGroupWriteJson) {
      LDAPGroupWriteObject <- jsonlite::fromJSON(LDAPGroupWriteJson)
      self$`name` <- LDAPGroupWriteObject$`name`
      self$`role_ids` <- LDAPGroupWriteObject$`role_ids`
      self$`url` <- LDAPGroupWriteObject$`url`
      self$`can` <- LDAPGroupWriteObject$`can`
    }
  )
)
