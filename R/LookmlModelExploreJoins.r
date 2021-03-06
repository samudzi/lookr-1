# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' LookmlModelExploreJoins Class
#'
#' @field name 
#' @field dependent_fields 
#' @field fields 
#' @field foreign_key 
#' @field from 
#' @field outer_only 
#' @field relationship 
#' @field required_joins 
#' @field sql_foreign_key 
#' @field sql_on 
#' @field sql_table_name 
#' @field type 
#' @field view_label 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LookmlModelExploreJoins <- R6::R6Class(
  'LookmlModelExploreJoins',
  public = list(
    `name` = NULL,
    `dependent_fields` = NULL,
    `fields` = NULL,
    `foreign_key` = NULL,
    `from` = NULL,
    `outer_only` = NULL,
    `relationship` = NULL,
    `required_joins` = NULL,
    `sql_foreign_key` = NULL,
    `sql_on` = NULL,
    `sql_table_name` = NULL,
    `type` = NULL,
    `view_label` = NULL,
    initialize = function(`name`, `dependent_fields`, `fields`, `foreign_key`, `from`, `outer_only`, `relationship`, `required_joins`, `sql_foreign_key`, `sql_on`, `sql_table_name`, `type`, `view_label`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`dependent_fields`)) {
        stopifnot(is.list(`dependent_fields`), length(`dependent_fields`) != 0)
        lapply(`dependent_fields`, function(x) stopifnot(is.character(x)))
        self$`dependent_fields` <- `dependent_fields`
      }
      if (!missing(`fields`)) {
        stopifnot(is.list(`fields`), length(`fields`) != 0)
        lapply(`fields`, function(x) stopifnot(is.character(x)))
        self$`fields` <- `fields`
      }
      if (!missing(`foreign_key`)) {
        stopifnot(is.character(`foreign_key`), length(`foreign_key`) == 1)
        self$`foreign_key` <- `foreign_key`
      }
      if (!missing(`from`)) {
        stopifnot(is.character(`from`), length(`from`) == 1)
        self$`from` <- `from`
      }
      if (!missing(`outer_only`)) {
        self$`outer_only` <- `outer_only`
      }
      if (!missing(`relationship`)) {
        stopifnot(is.character(`relationship`), length(`relationship`) == 1)
        self$`relationship` <- `relationship`
      }
      if (!missing(`required_joins`)) {
        stopifnot(is.list(`required_joins`), length(`required_joins`) != 0)
        lapply(`required_joins`, function(x) stopifnot(is.character(x)))
        self$`required_joins` <- `required_joins`
      }
      if (!missing(`sql_foreign_key`)) {
        stopifnot(is.character(`sql_foreign_key`), length(`sql_foreign_key`) == 1)
        self$`sql_foreign_key` <- `sql_foreign_key`
      }
      if (!missing(`sql_on`)) {
        stopifnot(is.character(`sql_on`), length(`sql_on`) == 1)
        self$`sql_on` <- `sql_on`
      }
      if (!missing(`sql_table_name`)) {
        stopifnot(is.character(`sql_table_name`), length(`sql_table_name`) == 1)
        self$`sql_table_name` <- `sql_table_name`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`view_label`)) {
        stopifnot(is.character(`view_label`), length(`view_label`) == 1)
        self$`view_label` <- `view_label`
      }
    },
    toJSON = function() {
      LookmlModelExploreJoinsObject <- list()
      if (!is.null(self$`name`)) {
        LookmlModelExploreJoinsObject[['name']] <- self$`name`
      }
      if (!is.null(self$`dependent_fields`)) {
        LookmlModelExploreJoinsObject[['dependent_fields']] <- self$`dependent_fields`
      }
      if (!is.null(self$`fields`)) {
        LookmlModelExploreJoinsObject[['fields']] <- self$`fields`
      }
      if (!is.null(self$`foreign_key`)) {
        LookmlModelExploreJoinsObject[['foreign_key']] <- self$`foreign_key`
      }
      if (!is.null(self$`from`)) {
        LookmlModelExploreJoinsObject[['from']] <- self$`from`
      }
      if (!is.null(self$`outer_only`)) {
        LookmlModelExploreJoinsObject[['outer_only']] <- self$`outer_only`
      }
      if (!is.null(self$`relationship`)) {
        LookmlModelExploreJoinsObject[['relationship']] <- self$`relationship`
      }
      if (!is.null(self$`required_joins`)) {
        LookmlModelExploreJoinsObject[['required_joins']] <- self$`required_joins`
      }
      if (!is.null(self$`sql_foreign_key`)) {
        LookmlModelExploreJoinsObject[['sql_foreign_key']] <- self$`sql_foreign_key`
      }
      if (!is.null(self$`sql_on`)) {
        LookmlModelExploreJoinsObject[['sql_on']] <- self$`sql_on`
      }
      if (!is.null(self$`sql_table_name`)) {
        LookmlModelExploreJoinsObject[['sql_table_name']] <- self$`sql_table_name`
      }
      if (!is.null(self$`type`)) {
        LookmlModelExploreJoinsObject[['type']] <- self$`type`
      }
      if (!is.null(self$`view_label`)) {
        LookmlModelExploreJoinsObject[['view_label']] <- self$`view_label`
      }

      LookmlModelExploreJoinsObject
    },
    fromJSON = function(LookmlModelExploreJoinsJson) {
      LookmlModelExploreJoinsObject <- jsonlite::fromJSON(LookmlModelExploreJoinsJson)
      if (!is.null(LookmlModelExploreJoinsObject$`name`)) {
        self$`name` <- LookmlModelExploreJoinsObject$`name`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`dependent_fields`)) {
        self$`dependent_fields` <- LookmlModelExploreJoinsObject$`dependent_fields`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`fields`)) {
        self$`fields` <- LookmlModelExploreJoinsObject$`fields`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`foreign_key`)) {
        self$`foreign_key` <- LookmlModelExploreJoinsObject$`foreign_key`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`from`)) {
        self$`from` <- LookmlModelExploreJoinsObject$`from`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`outer_only`)) {
        self$`outer_only` <- LookmlModelExploreJoinsObject$`outer_only`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`relationship`)) {
        self$`relationship` <- LookmlModelExploreJoinsObject$`relationship`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`required_joins`)) {
        self$`required_joins` <- LookmlModelExploreJoinsObject$`required_joins`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`sql_foreign_key`)) {
        self$`sql_foreign_key` <- LookmlModelExploreJoinsObject$`sql_foreign_key`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`sql_on`)) {
        self$`sql_on` <- LookmlModelExploreJoinsObject$`sql_on`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`sql_table_name`)) {
        self$`sql_table_name` <- LookmlModelExploreJoinsObject$`sql_table_name`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`type`)) {
        self$`type` <- LookmlModelExploreJoinsObject$`type`
      }
      if (!is.null(LookmlModelExploreJoinsObject$`view_label`)) {
        self$`view_label` <- LookmlModelExploreJoinsObject$`view_label`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "dependent_fields": [%s],
           "fields": [%s],
           "foreign_key": %s,
           "from": %s,
           "outer_only": %s,
           "relationship": %s,
           "required_joins": [%s],
           "sql_foreign_key": %s,
           "sql_on": %s,
           "sql_table_name": %s,
           "type": %s,
           "view_label": %s
        }',
        self$`name`,
        lapply(self$`dependent_fields`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`fields`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`foreign_key`,
        self$`from`,
        self$`outer_only`,
        self$`relationship`,
        lapply(self$`required_joins`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`sql_foreign_key`,
        self$`sql_on`,
        self$`sql_table_name`,
        self$`type`,
        self$`view_label`
      )
    },
    fromJSONString = function(LookmlModelExploreJoinsJson) {
      LookmlModelExploreJoinsObject <- jsonlite::fromJSON(LookmlModelExploreJoinsJson)
      self$`name` <- LookmlModelExploreJoinsObject$`name`
      self$`dependent_fields` <- LookmlModelExploreJoinsObject$`dependent_fields`
      self$`fields` <- LookmlModelExploreJoinsObject$`fields`
      self$`foreign_key` <- LookmlModelExploreJoinsObject$`foreign_key`
      self$`from` <- LookmlModelExploreJoinsObject$`from`
      self$`outer_only` <- LookmlModelExploreJoinsObject$`outer_only`
      self$`relationship` <- LookmlModelExploreJoinsObject$`relationship`
      self$`required_joins` <- LookmlModelExploreJoinsObject$`required_joins`
      self$`sql_foreign_key` <- LookmlModelExploreJoinsObject$`sql_foreign_key`
      self$`sql_on` <- LookmlModelExploreJoinsObject$`sql_on`
      self$`sql_table_name` <- LookmlModelExploreJoinsObject$`sql_table_name`
      self$`type` <- LookmlModelExploreJoinsObject$`type`
      self$`view_label` <- LookmlModelExploreJoinsObject$`view_label`
    }
  )
)
