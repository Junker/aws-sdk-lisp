;; DO NOT EDIT: File is generated by AWS-SDK/GENERATOR.

(common-lisp:defpackage #:aws-sdk/services/runtime.sagemaker/api
  (:use)
  (:nicknames #:aws/runtime.sagemaker)
  (:import-from #:aws-sdk/generator/shape)
  (:import-from #:aws-sdk/generator/operation)
  (:import-from #:aws-sdk/api)
  (:import-from #:aws-sdk/request)
  (:import-from #:aws-sdk/json-request)
  (:import-from #:aws-sdk/rest-json-request)
  (:import-from #:aws-sdk/rest-xml-request)
  (:import-from #:aws-sdk/query-request)
  (:import-from #:aws-sdk/error))
(common-lisp:in-package #:aws-sdk/services/runtime.sagemaker/api)
(common-lisp:progn
 (common-lisp:define-condition runtime.sagemaker-error
     (aws-sdk/error:aws-error)
     common-lisp:nil)
 (common-lisp:export 'runtime.sagemaker-error))
(common-lisp:progn
 (common-lisp:defclass runtime.sagemaker-request
                       (aws-sdk/generator/service::rest-json-request)
                       common-lisp:nil
                       (:default-initargs :service "runtime.sagemaker"
                        :api-version "2017-05-13" :host-prefix
                        "runtime.sagemaker" :signing-name "sagemaker"
                        :global-host common-lisp:nil))
 (common-lisp:export 'runtime.sagemaker-request))
(common-lisp:defvar *error-map*
  '(("InternalDependencyException" . internal-dependency-exception)
    ("InternalFailure" . internal-failure)
    ("InternalStreamFailure" . internal-stream-failure)
    ("ModelError" . model-error)
    ("ModelNotReadyException" . model-not-ready-exception)
    ("ModelStreamError" . model-stream-error)
    ("ServiceUnavailable" . service-unavailable)
    ("ValidationError" . validation-error)))
(common-lisp:deftype body-blob ()
  '(common-lisp:simple-array (common-lisp:unsigned-byte 8) (common-lisp:*)))
(common-lisp:deftype custom-attributes-header () 'common-lisp:string)
(common-lisp:deftype enable-explanations-header () 'common-lisp:string)
(common-lisp:deftype endpoint-name () 'common-lisp:string)
(common-lisp:deftype error-code () 'common-lisp:string)
(common-lisp:deftype header () 'common-lisp:string)
(common-lisp:deftype inference-component-header () 'common-lisp:string)
(common-lisp:deftype inference-id () 'common-lisp:string)
(common-lisp:deftype input-location-header () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:define-condition internal-dependency-exception
     (runtime.sagemaker-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       internal-dependency-exception-message)))
 (common-lisp:export
  (common-lisp:list 'internal-dependency-exception
                    'internal-dependency-exception-message)))
(common-lisp:progn
 (common-lisp:define-condition internal-failure
     (runtime.sagemaker-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       internal-failure-message)))
 (common-lisp:export
  (common-lisp:list 'internal-failure 'internal-failure-message)))
(common-lisp:progn
 (common-lisp:define-condition internal-stream-failure
     (runtime.sagemaker-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       internal-stream-failure-message)))
 (common-lisp:export
  (common-lisp:list 'internal-stream-failure 'internal-stream-failure-message)))
(common-lisp:deftype invocation-timeout-seconds-header () 'common-lisp:integer)
(common-lisp:progn
 (common-lisp:defstruct
     (invoke-endpoint-async-input (:copier common-lisp:nil)
      (:conc-name "struct-shape-invoke-endpoint-async-input-"))
   (endpoint-name (common-lisp:error ":endpoint-name is required") :type
    (common-lisp:or endpoint-name common-lisp:null))
   (content-type common-lisp:nil :type
    (common-lisp:or header common-lisp:null))
   (accept common-lisp:nil :type (common-lisp:or header common-lisp:null))
   (custom-attributes common-lisp:nil :type
    (common-lisp:or custom-attributes-header common-lisp:null))
   (inference-id common-lisp:nil :type
    (common-lisp:or inference-id common-lisp:null))
   (input-location (common-lisp:error ":input-location is required") :type
    (common-lisp:or input-location-header common-lisp:null))
   (request-ttlseconds common-lisp:nil :type
    (common-lisp:or request-ttlseconds-header common-lisp:null))
   (invocation-timeout-seconds common-lisp:nil :type
    (common-lisp:or invocation-timeout-seconds-header common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invoke-endpoint-async-input
                    'make-invoke-endpoint-async-input))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-async-input))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'content-type))
      (common-lisp:cons "X-Amzn-SageMaker-Content-Type"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'accept))
      (common-lisp:cons "X-Amzn-SageMaker-Accept"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'custom-attributes))
      (common-lisp:cons "X-Amzn-SageMaker-Custom-Attributes"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'inference-id))
      (common-lisp:cons "X-Amzn-SageMaker-Inference-Id"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'input-location))
      (common-lisp:cons "X-Amzn-SageMaker-InputLocation"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'request-ttlseconds))
      (common-lisp:cons "X-Amzn-SageMaker-RequestTTLSeconds"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input
                           'invocation-timeout-seconds))
      (common-lisp:cons "X-Amzn-SageMaker-InvocationTimeoutSeconds"
                        aws-sdk/generator/shape::value))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-async-input))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-async-input))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (invoke-endpoint-async-output (:copier common-lisp:nil)
      (:conc-name "struct-shape-invoke-endpoint-async-output-"))
   (inference-id common-lisp:nil :type
    (common-lisp:or header common-lisp:null))
   (output-location common-lisp:nil :type
    (common-lisp:or header common-lisp:null))
   (failure-location common-lisp:nil :type
    (common-lisp:or header common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invoke-endpoint-async-output
                    'make-invoke-endpoint-async-output))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-async-output))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'output-location))
      (common-lisp:cons "X-Amzn-SageMaker-OutputLocation"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'failure-location))
      (common-lisp:cons "X-Amzn-SageMaker-FailureLocation"
                        aws-sdk/generator/shape::value))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-async-output))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'inference-id))
      (common-lisp:list
       (common-lisp:cons "InferenceId"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-async-output))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (invoke-endpoint-input (:copier common-lisp:nil)
      (:conc-name "struct-shape-invoke-endpoint-input-"))
   (endpoint-name (common-lisp:error ":endpoint-name is required") :type
    (common-lisp:or endpoint-name common-lisp:null))
   (body (common-lisp:error ":body is required") :type
    (common-lisp:or body-blob common-lisp:null))
   (content-type common-lisp:nil :type
    (common-lisp:or header common-lisp:null))
   (accept common-lisp:nil :type (common-lisp:or header common-lisp:null))
   (custom-attributes common-lisp:nil :type
    (common-lisp:or custom-attributes-header common-lisp:null))
   (target-model common-lisp:nil :type
    (common-lisp:or target-model-header common-lisp:null))
   (target-variant common-lisp:nil :type
    (common-lisp:or target-variant-header common-lisp:null))
   (target-container-hostname common-lisp:nil :type
    (common-lisp:or target-container-hostname-header common-lisp:null))
   (inference-id common-lisp:nil :type
    (common-lisp:or inference-id common-lisp:null))
   (enable-explanations common-lisp:nil :type
    (common-lisp:or enable-explanations-header common-lisp:null))
   (inference-component-name common-lisp:nil :type
    (common-lisp:or inference-component-header common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invoke-endpoint-input 'make-invoke-endpoint-input))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-input))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'content-type))
      (common-lisp:cons "Content-Type" aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'accept))
      (common-lisp:cons "Accept" aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'custom-attributes))
      (common-lisp:cons "X-Amzn-SageMaker-Custom-Attributes"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'target-model))
      (common-lisp:cons "X-Amzn-SageMaker-Target-Model"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'target-variant))
      (common-lisp:cons "X-Amzn-SageMaker-Target-Variant"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input
                           'target-container-hostname))
      (common-lisp:cons "X-Amzn-SageMaker-Target-Container-Hostname"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'inference-id))
      (common-lisp:cons "X-Amzn-SageMaker-Inference-Id"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'enable-explanations))
      (common-lisp:cons "X-Amzn-SageMaker-Enable-Explanations"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input
                           'inference-component-name))
      (common-lisp:cons "X-Amzn-SageMaker-Inference-Component"
                        aws-sdk/generator/shape::value))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-input))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'body))
      (common-lisp:list
       (common-lisp:cons "Body"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-input))
   (common-lisp:slot-value aws-sdk/generator/shape::input 'body)))
(common-lisp:progn
 (common-lisp:defstruct
     (invoke-endpoint-output (:copier common-lisp:nil)
      (:conc-name "struct-shape-invoke-endpoint-output-"))
   (body (common-lisp:error ":body is required") :type
    (common-lisp:or body-blob common-lisp:null))
   (content-type common-lisp:nil :type
    (common-lisp:or header common-lisp:null))
   (invoked-production-variant common-lisp:nil :type
    (common-lisp:or header common-lisp:null))
   (custom-attributes common-lisp:nil :type
    (common-lisp:or custom-attributes-header common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invoke-endpoint-output 'make-invoke-endpoint-output))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-output))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'content-type))
      (common-lisp:cons "Content-Type" aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input
                           'invoked-production-variant))
      (common-lisp:cons "x-Amzn-Invoked-Production-Variant"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'custom-attributes))
      (common-lisp:cons "X-Amzn-SageMaker-Custom-Attributes"
                        aws-sdk/generator/shape::value))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-output))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'body))
      (common-lisp:list
       (common-lisp:cons "Body"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-output))
   (common-lisp:slot-value aws-sdk/generator/shape::input 'body)))
(common-lisp:progn
 (common-lisp:defstruct
     (invoke-endpoint-with-response-stream-input (:copier common-lisp:nil)
      (:conc-name "struct-shape-invoke-endpoint-with-response-stream-input-"))
   (endpoint-name (common-lisp:error ":endpoint-name is required") :type
    (common-lisp:or endpoint-name common-lisp:null))
   (body (common-lisp:error ":body is required") :type
    (common-lisp:or body-blob common-lisp:null))
   (content-type common-lisp:nil :type
    (common-lisp:or header common-lisp:null))
   (accept common-lisp:nil :type (common-lisp:or header common-lisp:null))
   (custom-attributes common-lisp:nil :type
    (common-lisp:or custom-attributes-header common-lisp:null))
   (target-variant common-lisp:nil :type
    (common-lisp:or target-variant-header common-lisp:null))
   (target-container-hostname common-lisp:nil :type
    (common-lisp:or target-container-hostname-header common-lisp:null))
   (inference-id common-lisp:nil :type
    (common-lisp:or inference-id common-lisp:null))
   (inference-component-name common-lisp:nil :type
    (common-lisp:or inference-component-header common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invoke-endpoint-with-response-stream-input
                    'make-invoke-endpoint-with-response-stream-input))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-with-response-stream-input))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'content-type))
      (common-lisp:cons "Content-Type" aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'accept))
      (common-lisp:cons "X-Amzn-SageMaker-Accept"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'custom-attributes))
      (common-lisp:cons "X-Amzn-SageMaker-Custom-Attributes"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'target-variant))
      (common-lisp:cons "X-Amzn-SageMaker-Target-Variant"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input
                           'target-container-hostname))
      (common-lisp:cons "X-Amzn-SageMaker-Target-Container-Hostname"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'inference-id))
      (common-lisp:cons "X-Amzn-SageMaker-Inference-Id"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input
                           'inference-component-name))
      (common-lisp:cons "X-Amzn-SageMaker-Inference-Component"
                        aws-sdk/generator/shape::value))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-with-response-stream-input))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'body))
      (common-lisp:list
       (common-lisp:cons "Body"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-with-response-stream-input))
   (common-lisp:slot-value aws-sdk/generator/shape::input 'body)))
(common-lisp:progn
 (common-lisp:defstruct
     (invoke-endpoint-with-response-stream-output (:copier common-lisp:nil)
      (:conc-name "struct-shape-invoke-endpoint-with-response-stream-output-"))
   (body (common-lisp:error ":body is required") :type
    (common-lisp:or response-stream common-lisp:null))
   (content-type common-lisp:nil :type
    (common-lisp:or header common-lisp:null))
   (invoked-production-variant common-lisp:nil :type
    (common-lisp:or header common-lisp:null))
   (custom-attributes common-lisp:nil :type
    (common-lisp:or custom-attributes-header common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'invoke-endpoint-with-response-stream-output
                    'make-invoke-endpoint-with-response-stream-output))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-with-response-stream-output))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'content-type))
      (common-lisp:cons "X-Amzn-SageMaker-Content-Type"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input
                           'invoked-production-variant))
      (common-lisp:cons "x-Amzn-Invoked-Production-Variant"
                        aws-sdk/generator/shape::value))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'custom-attributes))
      (common-lisp:cons "X-Amzn-SageMaker-Custom-Attributes"
                        aws-sdk/generator/shape::value))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-with-response-stream-output))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'body))
      (common-lisp:list
       (common-lisp:cons "Body"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          invoke-endpoint-with-response-stream-output))
   (common-lisp:slot-value aws-sdk/generator/shape::input 'body)))
(common-lisp:deftype log-stream-arn () 'common-lisp:string)
(common-lisp:deftype message () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:define-condition model-error
     (runtime.sagemaker-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       model-error-message)
      (original-status-code :initarg :original-status-code :initform
       common-lisp:nil :reader model-error-original-status-code)
      (original-message :initarg :original-message :initform common-lisp:nil
       :reader model-error-original-message)
      (log-stream-arn :initarg :log-stream-arn :initform common-lisp:nil
       :reader model-error-log-stream-arn)))
 (common-lisp:export
  (common-lisp:list 'model-error 'model-error-message
                    'model-error-original-status-code
                    'model-error-original-message 'model-error-log-stream-arn)))
(common-lisp:progn
 (common-lisp:define-condition model-not-ready-exception
     (runtime.sagemaker-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       model-not-ready-exception-message)))
 (common-lisp:export
  (common-lisp:list 'model-not-ready-exception
                    'model-not-ready-exception-message)))
(common-lisp:progn
 (common-lisp:define-condition model-stream-error
     (runtime.sagemaker-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       model-stream-error-message)
      (error-code :initarg :error-code :initform common-lisp:nil :reader
       model-stream-error-error-code)))
 (common-lisp:export
  (common-lisp:list 'model-stream-error 'model-stream-error-message
                    'model-stream-error-error-code)))
(common-lisp:deftype part-blob ()
  '(common-lisp:simple-array (common-lisp:unsigned-byte 8) (common-lisp:*)))
(common-lisp:progn
 (common-lisp:defstruct
     (payload-part (:copier common-lisp:nil)
      (:conc-name "struct-shape-payload-part-"))
   (bytes common-lisp:nil :type (common-lisp:or part-blob common-lisp:null)))
 (common-lisp:export (common-lisp:list 'payload-part 'make-payload-part))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        ((aws-sdk/generator/shape::input payload-part))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        ((aws-sdk/generator/shape::input payload-part))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'bytes))
      (common-lisp:list
       (common-lisp:cons "Bytes"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        ((aws-sdk/generator/shape::input payload-part))
   common-lisp:nil))
(common-lisp:deftype request-ttlseconds-header () 'common-lisp:integer)
(common-lisp:progn
 (common-lisp:defstruct
     (response-stream (:copier common-lisp:nil)
      (:conc-name "struct-shape-response-stream-"))
   (payload-part common-lisp:nil :type
    (common-lisp:or payload-part common-lisp:null))
   (model-stream-error common-lisp:nil :type
    (common-lisp:or model-stream-error common-lisp:null))
   (internal-stream-failure common-lisp:nil :type
    (common-lisp:or internal-stream-failure common-lisp:null)))
 (common-lisp:export (common-lisp:list 'response-stream 'make-response-stream))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        ((aws-sdk/generator/shape::input response-stream))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        ((aws-sdk/generator/shape::input response-stream))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'payload-part))
      (common-lisp:list
       (common-lisp:cons "PayloadPart"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'model-stream-error))
      (common-lisp:list
       (common-lisp:cons "ModelStreamError"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input
                           'internal-stream-failure))
      (common-lisp:list
       (common-lisp:cons "InternalStreamFailure"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        ((aws-sdk/generator/shape::input response-stream))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:define-condition service-unavailable
     (runtime.sagemaker-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       service-unavailable-message)))
 (common-lisp:export
  (common-lisp:list 'service-unavailable 'service-unavailable-message)))
(common-lisp:deftype status-code () 'common-lisp:integer)
(common-lisp:deftype target-container-hostname-header () 'common-lisp:string)
(common-lisp:deftype target-model-header () 'common-lisp:string)
(common-lisp:deftype target-variant-header () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:define-condition validation-error
     (runtime.sagemaker-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       validation-error-message)))
 (common-lisp:export
  (common-lisp:list 'validation-error 'validation-error-message)))
(common-lisp:progn
 (common-lisp:defun invoke-endpoint
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key endpoint-name body content-type accept
                     custom-attributes target-model target-variant
                     target-container-hostname inference-id enable-explanations
                     inference-component-name)
   (common-lisp:declare
    (common-lisp:ignorable endpoint-name body content-type accept
     custom-attributes target-model target-variant target-container-hostname
     inference-id enable-explanations inference-component-name))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-invoke-endpoint-input
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input
        'runtime.sagemaker-request aws-sdk/generator/operation::input "POST"
        (common-lisp:lambda (aws-sdk/generator/operation::input)
          (common-lisp:format common-lisp:nil "/endpoints/~A/invocations"
                              (quri.encode:url-encode
                               (common-lisp:slot-value
                                aws-sdk/generator/operation::input
                                'endpoint-name))))
        "InvokeEndpoint")
       :want-stream common-lisp:t)
      "blob" common-lisp:nil *error-map*)))
 (common-lisp:export 'invoke-endpoint))
(common-lisp:progn
 (common-lisp:defun invoke-endpoint-async
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key endpoint-name content-type accept
                     custom-attributes inference-id input-location
                     request-ttlseconds invocation-timeout-seconds)
   (common-lisp:declare
    (common-lisp:ignorable endpoint-name content-type accept custom-attributes
     inference-id input-location request-ttlseconds
     invocation-timeout-seconds))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-invoke-endpoint-async-input
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input
        'runtime.sagemaker-request aws-sdk/generator/operation::input "POST"
        (common-lisp:lambda (aws-sdk/generator/operation::input)
          (common-lisp:format common-lisp:nil "/endpoints/~A/async-invocations"
                              (quri.encode:url-encode
                               (common-lisp:slot-value
                                aws-sdk/generator/operation::input
                                'endpoint-name))))
        "InvokeEndpointAsync"))
      common-lisp:nil common-lisp:nil *error-map*)))
 (common-lisp:export 'invoke-endpoint-async))
(common-lisp:progn
 (common-lisp:defun invoke-endpoint-with-response-stream
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key endpoint-name body content-type accept
                     custom-attributes target-variant target-container-hostname
                     inference-id inference-component-name)
   (common-lisp:declare
    (common-lisp:ignorable endpoint-name body content-type accept
     custom-attributes target-variant target-container-hostname inference-id
     inference-component-name))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply
                       'make-invoke-endpoint-with-response-stream-input
                       aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input
        'runtime.sagemaker-request aws-sdk/generator/operation::input "POST"
        (common-lisp:lambda (aws-sdk/generator/operation::input)
          (common-lisp:format common-lisp:nil
                              "/endpoints/~A/invocations-response-stream"
                              (quri.encode:url-encode
                               (common-lisp:slot-value
                                aws-sdk/generator/operation::input
                                'endpoint-name))))
        "InvokeEndpointWithResponseStream"))
      "structure" common-lisp:nil *error-map*)))
 (common-lisp:export 'invoke-endpoint-with-response-stream))
