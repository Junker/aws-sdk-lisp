;; DO NOT EDIT: File is generated by AWS-SDK/GENERATOR.

(common-lisp:defpackage #:aws-sdk/services/sagemaker-a2i-runtime/api
  (:use)
  (:nicknames #:aws/sagemaker-a2i-runtime)
  (:import-from #:aws-sdk/generator/shape)
  (:import-from #:aws-sdk/generator/operation)
  (:import-from #:aws-sdk/api)
  (:import-from #:aws-sdk/request)
  (:import-from #:aws-sdk/json-request)
  (:import-from #:aws-sdk/rest-json-request)
  (:import-from #:aws-sdk/rest-xml-request)
  (:import-from #:aws-sdk/query-request)
  (:import-from #:aws-sdk/error))
(common-lisp:in-package #:aws-sdk/services/sagemaker-a2i-runtime/api)
(common-lisp:progn
 (common-lisp:define-condition sagemaker-a2i-runtime-error
     (aws-sdk/error:aws-error)
     common-lisp:nil)
 (common-lisp:export 'sagemaker-a2i-runtime-error))
(common-lisp:progn
 (common-lisp:defclass sagemaker-a2i-runtime-request
                       (aws-sdk/generator/service::rest-json-request)
                       common-lisp:nil
                       (:default-initargs :service "sagemaker-a2i-runtime"
                        :api-version "2019-11-07" :host-prefix
                        "a2i-runtime.sagemaker" :signing-name "sagemaker"
                        :global-host common-lisp:nil))
 (common-lisp:export 'sagemaker-a2i-runtime-request))
(common-lisp:defvar *error-map*
  '(("ConflictException" . conflict-exception)
    ("InternalServerException" . internal-server-exception)
    ("ResourceNotFoundException" . resource-not-found-exception)
    ("ServiceQuotaExceededException" . service-quota-exceeded-exception)
    ("ThrottlingException" . throttling-exception)
    ("ValidationException" . validation-exception)))
(common-lisp:progn
 (common-lisp:define-condition conflict-exception
     (sagemaker-a2i-runtime-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       conflict-exception-message)))
 (common-lisp:export
  (common-lisp:list 'conflict-exception 'conflict-exception-message)))
(common-lisp:deftype content-classifier () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:deftype content-classifiers ()
   '(trivial-types:proper-list content-classifier))
 (common-lisp:defun make-content-classifiers
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list content-classifier))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:defstruct
     (delete-human-loop-request (:copier common-lisp:nil)
      (:conc-name "struct-shape-delete-human-loop-request-"))
   (human-loop-name (common-lisp:error ":human-loop-name is required") :type
    (common-lisp:or human-loop-name common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'delete-human-loop-request
                    'make-delete-human-loop-request))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          delete-human-loop-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          delete-human-loop-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          delete-human-loop-request))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (delete-human-loop-response (:copier common-lisp:nil)
      (:conc-name "struct-shape-delete-human-loop-response-")))
 (common-lisp:export
  (common-lisp:list 'delete-human-loop-response
                    'make-delete-human-loop-response))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          delete-human-loop-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          delete-human-loop-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          delete-human-loop-response))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (describe-human-loop-request (:copier common-lisp:nil)
      (:conc-name "struct-shape-describe-human-loop-request-"))
   (human-loop-name (common-lisp:error ":human-loop-name is required") :type
    (common-lisp:or human-loop-name common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'describe-human-loop-request
                    'make-describe-human-loop-request))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          describe-human-loop-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          describe-human-loop-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          describe-human-loop-request))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (describe-human-loop-response (:copier common-lisp:nil)
      (:conc-name "struct-shape-describe-human-loop-response-"))
   (creation-time (common-lisp:error ":creation-time is required") :type
    (common-lisp:or timestamp common-lisp:null))
   (failure-reason common-lisp:nil :type
    (common-lisp:or string common-lisp:null))
   (failure-code common-lisp:nil :type
    (common-lisp:or string common-lisp:null))
   (human-loop-status (common-lisp:error ":human-loop-status is required")
    :type (common-lisp:or human-loop-status common-lisp:null))
   (human-loop-name (common-lisp:error ":human-loop-name is required") :type
    (common-lisp:or human-loop-name common-lisp:null))
   (human-loop-arn (common-lisp:error ":human-loop-arn is required") :type
    (common-lisp:or human-loop-arn common-lisp:null))
   (flow-definition-arn (common-lisp:error ":flow-definition-arn is required")
    :type (common-lisp:or flow-definition-arn common-lisp:null))
   (human-loop-output common-lisp:nil :type
    (common-lisp:or human-loop-output common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'describe-human-loop-response
                    'make-describe-human-loop-response))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          describe-human-loop-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          describe-human-loop-response))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'creation-time))
      (common-lisp:list
       (common-lisp:cons "CreationTime"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'failure-reason))
      (common-lisp:list
       (common-lisp:cons "FailureReason"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'failure-code))
      (common-lisp:list
       (common-lisp:cons "FailureCode"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-status))
      (common-lisp:list
       (common-lisp:cons "HumanLoopStatus"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-name))
      (common-lisp:list
       (common-lisp:cons "HumanLoopName"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-arn))
      (common-lisp:list
       (common-lisp:cons "HumanLoopArn"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'flow-definition-arn))
      (common-lisp:list
       (common-lisp:cons "FlowDefinitionArn"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-output))
      (common-lisp:list
       (common-lisp:cons "HumanLoopOutput"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          describe-human-loop-response))
   common-lisp:nil))
(common-lisp:deftype failure-reason () 'common-lisp:string)
(common-lisp:deftype flow-definition-arn () 'common-lisp:string)
(common-lisp:deftype human-loop-arn () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct
     (human-loop-data-attributes (:copier common-lisp:nil)
      (:conc-name "struct-shape-human-loop-data-attributes-"))
   (content-classifiers (common-lisp:error ":content-classifiers is required")
    :type (common-lisp:or content-classifiers common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'human-loop-data-attributes
                    'make-human-loop-data-attributes))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          human-loop-data-attributes))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          human-loop-data-attributes))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'content-classifiers))
      (common-lisp:list
       (common-lisp:cons "ContentClassifiers"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          human-loop-data-attributes))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (human-loop-input (:copier common-lisp:nil)
      (:conc-name "struct-shape-human-loop-input-"))
   (input-content (common-lisp:error ":input-content is required") :type
    (common-lisp:or input-content common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'human-loop-input 'make-human-loop-input))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        ((aws-sdk/generator/shape::input human-loop-input))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        ((aws-sdk/generator/shape::input human-loop-input))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'input-content))
      (common-lisp:list
       (common-lisp:cons "InputContent"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        ((aws-sdk/generator/shape::input human-loop-input))
   common-lisp:nil))
(common-lisp:deftype human-loop-name () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct
     (human-loop-output (:copier common-lisp:nil)
      (:conc-name "struct-shape-human-loop-output-"))
   (output-s3uri (common-lisp:error ":output-s3uri is required") :type
    (common-lisp:or string common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'human-loop-output 'make-human-loop-output))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        ((aws-sdk/generator/shape::input human-loop-output))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        ((aws-sdk/generator/shape::input human-loop-output))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'output-s3uri))
      (common-lisp:list
       (common-lisp:cons "OutputS3Uri"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        ((aws-sdk/generator/shape::input human-loop-output))
   common-lisp:nil))
(common-lisp:deftype human-loop-status () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:deftype human-loop-summaries ()
   '(trivial-types:proper-list human-loop-summary))
 (common-lisp:defun make-human-loop-summaries
                    (common-lisp:&rest aws-sdk/generator/shape::members)
   (common-lisp:check-type aws-sdk/generator/shape::members
                           (trivial-types:proper-list human-loop-summary))
   aws-sdk/generator/shape::members))
(common-lisp:progn
 (common-lisp:defstruct
     (human-loop-summary (:copier common-lisp:nil)
      (:conc-name "struct-shape-human-loop-summary-"))
   (human-loop-name common-lisp:nil :type
    (common-lisp:or human-loop-name common-lisp:null))
   (human-loop-status common-lisp:nil :type
    (common-lisp:or human-loop-status common-lisp:null))
   (creation-time common-lisp:nil :type
    (common-lisp:or timestamp common-lisp:null))
   (failure-reason common-lisp:nil :type
    (common-lisp:or failure-reason common-lisp:null))
   (flow-definition-arn common-lisp:nil :type
    (common-lisp:or flow-definition-arn common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'human-loop-summary 'make-human-loop-summary))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        ((aws-sdk/generator/shape::input human-loop-summary))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        ((aws-sdk/generator/shape::input human-loop-summary))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-name))
      (common-lisp:list
       (common-lisp:cons "HumanLoopName"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-status))
      (common-lisp:list
       (common-lisp:cons "HumanLoopStatus"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'creation-time))
      (common-lisp:list
       (common-lisp:cons "CreationTime"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'failure-reason))
      (common-lisp:list
       (common-lisp:cons "FailureReason"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'flow-definition-arn))
      (common-lisp:list
       (common-lisp:cons "FlowDefinitionArn"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        ((aws-sdk/generator/shape::input human-loop-summary))
   common-lisp:nil))
(common-lisp:deftype input-content () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:define-condition internal-server-exception
     (sagemaker-a2i-runtime-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       internal-server-exception-message)))
 (common-lisp:export
  (common-lisp:list 'internal-server-exception
                    'internal-server-exception-message)))
(common-lisp:progn
 (common-lisp:defstruct
     (list-human-loops-request (:copier common-lisp:nil)
      (:conc-name "struct-shape-list-human-loops-request-"))
   (creation-time-after common-lisp:nil :type
    (common-lisp:or timestamp common-lisp:null))
   (creation-time-before common-lisp:nil :type
    (common-lisp:or timestamp common-lisp:null))
   (flow-definition-arn (common-lisp:error ":flow-definition-arn is required")
    :type (common-lisp:or flow-definition-arn common-lisp:null))
   (sort-order common-lisp:nil :type
    (common-lisp:or sort-order common-lisp:null))
   (next-token common-lisp:nil :type
    (common-lisp:or next-token common-lisp:null))
   (max-results common-lisp:nil :type
    (common-lisp:or max-results common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'list-human-loops-request 'make-list-human-loops-request))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          list-human-loops-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          list-human-loops-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          list-human-loops-request))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (list-human-loops-response (:copier common-lisp:nil)
      (:conc-name "struct-shape-list-human-loops-response-"))
   (human-loop-summaries
    (common-lisp:error ":human-loop-summaries is required") :type
    (common-lisp:or human-loop-summaries common-lisp:null))
   (next-token common-lisp:nil :type
    (common-lisp:or next-token common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'list-human-loops-response
                    'make-list-human-loops-response))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          list-human-loops-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          list-human-loops-response))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input
                           'human-loop-summaries))
      (common-lisp:list
       (common-lisp:cons "HumanLoopSummaries"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'next-token))
      (common-lisp:list
       (common-lisp:cons "NextToken"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          list-human-loops-response))
   common-lisp:nil))
(common-lisp:deftype max-results () 'common-lisp:integer)
(common-lisp:deftype next-token () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:define-condition resource-not-found-exception
     (sagemaker-a2i-runtime-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       resource-not-found-exception-message)))
 (common-lisp:export
  (common-lisp:list 'resource-not-found-exception
                    'resource-not-found-exception-message)))
(common-lisp:progn
 (common-lisp:define-condition service-quota-exceeded-exception
     (sagemaker-a2i-runtime-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       service-quota-exceeded-exception-message)))
 (common-lisp:export
  (common-lisp:list 'service-quota-exceeded-exception
                    'service-quota-exceeded-exception-message)))
(common-lisp:deftype sort-order () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct
     (start-human-loop-request (:copier common-lisp:nil)
      (:conc-name "struct-shape-start-human-loop-request-"))
   (human-loop-name (common-lisp:error ":human-loop-name is required") :type
    (common-lisp:or human-loop-name common-lisp:null))
   (flow-definition-arn (common-lisp:error ":flow-definition-arn is required")
    :type (common-lisp:or flow-definition-arn common-lisp:null))
   (human-loop-input (common-lisp:error ":human-loop-input is required") :type
    (common-lisp:or human-loop-input common-lisp:null))
   (data-attributes common-lisp:nil :type
    (common-lisp:or human-loop-data-attributes common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'start-human-loop-request 'make-start-human-loop-request))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          start-human-loop-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          start-human-loop-request))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-name))
      (common-lisp:list
       (common-lisp:cons "HumanLoopName"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'flow-definition-arn))
      (common-lisp:list
       (common-lisp:cons "FlowDefinitionArn"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-input))
      (common-lisp:list
       (common-lisp:cons "HumanLoopInput"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'data-attributes))
      (common-lisp:list
       (common-lisp:cons "DataAttributes"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          start-human-loop-request))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (start-human-loop-response (:copier common-lisp:nil)
      (:conc-name "struct-shape-start-human-loop-response-"))
   (human-loop-arn common-lisp:nil :type
    (common-lisp:or human-loop-arn common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'start-human-loop-response
                    'make-start-human-loop-response))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          start-human-loop-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          start-human-loop-response))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-arn))
      (common-lisp:list
       (common-lisp:cons "HumanLoopArn"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          start-human-loop-response))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (stop-human-loop-request (:copier common-lisp:nil)
      (:conc-name "struct-shape-stop-human-loop-request-"))
   (human-loop-name (common-lisp:error ":human-loop-name is required") :type
    (common-lisp:or human-loop-name common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'stop-human-loop-request 'make-stop-human-loop-request))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          stop-human-loop-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          stop-human-loop-request))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'human-loop-name))
      (common-lisp:list
       (common-lisp:cons "HumanLoopName"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          stop-human-loop-request))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (stop-human-loop-response (:copier common-lisp:nil)
      (:conc-name "struct-shape-stop-human-loop-response-")))
 (common-lisp:export
  (common-lisp:list 'stop-human-loop-response 'make-stop-human-loop-response))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          stop-human-loop-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          stop-human-loop-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          stop-human-loop-response))
   common-lisp:nil))
(common-lisp:deftype string () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:define-condition throttling-exception
     (sagemaker-a2i-runtime-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       throttling-exception-message)))
 (common-lisp:export
  (common-lisp:list 'throttling-exception 'throttling-exception-message)))
(common-lisp:deftype timestamp () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:define-condition validation-exception
     (sagemaker-a2i-runtime-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       validation-exception-message)))
 (common-lisp:export
  (common-lisp:list 'validation-exception 'validation-exception-message)))
(common-lisp:progn
 (common-lisp:defun delete-human-loop
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key human-loop-name)
   (common-lisp:declare (common-lisp:ignorable human-loop-name))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-delete-human-loop-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input
        'sagemaker-a2i-runtime-request aws-sdk/generator/operation::input
        "DELETE"
        (common-lisp:lambda (aws-sdk/generator/operation::input)
          (common-lisp:format common-lisp:nil "/human-loops/~A"
                              (quri.encode:url-encode
                               (common-lisp:slot-value
                                aws-sdk/generator/operation::input
                                'human-loop-name))))
        "DeleteHumanLoop"))
      common-lisp:nil common-lisp:nil *error-map*)))
 (common-lisp:export 'delete-human-loop))
(common-lisp:progn
 (common-lisp:defun describe-human-loop
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key human-loop-name)
   (common-lisp:declare (common-lisp:ignorable human-loop-name))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-describe-human-loop-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input
        'sagemaker-a2i-runtime-request aws-sdk/generator/operation::input "GET"
        (common-lisp:lambda (aws-sdk/generator/operation::input)
          (common-lisp:format common-lisp:nil "/human-loops/~A"
                              (quri.encode:url-encode
                               (common-lisp:slot-value
                                aws-sdk/generator/operation::input
                                'human-loop-name))))
        "DescribeHumanLoop"))
      common-lisp:nil common-lisp:nil *error-map*)))
 (common-lisp:export 'describe-human-loop))
(common-lisp:progn
 (common-lisp:defun list-human-loops
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key creation-time-after creation-time-before
                     flow-definition-arn sort-order next-token max-results)
   (common-lisp:declare
    (common-lisp:ignorable creation-time-after creation-time-before
     flow-definition-arn sort-order next-token max-results))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-list-human-loops-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input
        'sagemaker-a2i-runtime-request aws-sdk/generator/operation::input "GET"
        "/human-loops" "ListHumanLoops"))
      common-lisp:nil common-lisp:nil *error-map*)))
 (common-lisp:export 'list-human-loops))
(common-lisp:progn
 (common-lisp:defun start-human-loop
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key human-loop-name flow-definition-arn
                     human-loop-input data-attributes)
   (common-lisp:declare
    (common-lisp:ignorable human-loop-name flow-definition-arn human-loop-input
     data-attributes))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-start-human-loop-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input
        'sagemaker-a2i-runtime-request aws-sdk/generator/operation::input
        "POST" "/human-loops" "StartHumanLoop"))
      common-lisp:nil common-lisp:nil *error-map*)))
 (common-lisp:export 'start-human-loop))
(common-lisp:progn
 (common-lisp:defun stop-human-loop
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key human-loop-name)
   (common-lisp:declare (common-lisp:ignorable human-loop-name))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-stop-human-loop-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input
        'sagemaker-a2i-runtime-request aws-sdk/generator/operation::input
        "POST" "/human-loops/stop" "StopHumanLoop"))
      common-lisp:nil common-lisp:nil *error-map*)))
 (common-lisp:export 'stop-human-loop))
