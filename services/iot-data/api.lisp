;; DO NOT EDIT: File is generated by AWS-SDK/GENERATOR.

(common-lisp:defpackage #:aws-sdk/services/iot-data/api
  (:use)
  (:nicknames #:aws/iot-data)
  (:import-from #:aws-sdk/generator/shape)
  (:import-from #:aws-sdk/generator/operation)
  (:import-from #:aws-sdk/api)
  (:import-from #:aws-sdk/request)
  (:import-from #:aws-sdk/error))
(common-lisp:in-package #:aws-sdk/services/iot-data/api)
(common-lisp:progn
 (common-lisp:defclass iot-data-request (aws-sdk/request:request)
                       common-lisp:nil (:default-initargs :service "iot-data"))
 (common-lisp:export 'iot-data-request))
(common-lisp:progn
 (common-lisp:define-condition iot-data-error
     (aws-sdk/error:aws-error)
     common-lisp:nil)
 (common-lisp:export 'iot-data-error))
(common-lisp:progn
 (common-lisp:define-condition conflict-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       conflict-exception-message)))
 (common-lisp:export
  (common-lisp:list 'conflict-exception 'conflict-exception-message)))
(common-lisp:progn
 (common-lisp:defstruct
     (delete-thing-shadow-request (:copier common-lisp:nil)
      (:conc-name "struct-shape-delete-thing-shadow-request-"))
   (thing-name (common-lisp:error ":thingname is required") :type
    (common-lisp:or thing-name common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'delete-thing-shadow-request
                    'make-delete-thing-shadow-request))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          delete-thing-shadow-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          delete-thing-shadow-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          delete-thing-shadow-request))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (delete-thing-shadow-response (:copier common-lisp:nil)
      (:conc-name "struct-shape-delete-thing-shadow-response-"))
   (payload (common-lisp:error ":payload is required") :type
    (common-lisp:or json-document common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'delete-thing-shadow-response
                    'make-delete-thing-shadow-response))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          delete-thing-shadow-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          delete-thing-shadow-response))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'payload))
      (common-lisp:list
       (common-lisp:cons "payload"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          delete-thing-shadow-response))
   (common-lisp:slot-value aws-sdk/generator/shape::input 'payload)))
(common-lisp:deftype error-message () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defstruct
     (get-thing-shadow-request (:copier common-lisp:nil)
      (:conc-name "struct-shape-get-thing-shadow-request-"))
   (thing-name (common-lisp:error ":thingname is required") :type
    (common-lisp:or thing-name common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-thing-shadow-request 'make-get-thing-shadow-request))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          get-thing-shadow-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          get-thing-shadow-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          get-thing-shadow-request))
   common-lisp:nil))
(common-lisp:progn
 (common-lisp:defstruct
     (get-thing-shadow-response (:copier common-lisp:nil)
      (:conc-name "struct-shape-get-thing-shadow-response-"))
   (payload common-lisp:nil :type
    (common-lisp:or json-document common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'get-thing-shadow-response
                    'make-get-thing-shadow-response))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          get-thing-shadow-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          get-thing-shadow-response))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'payload))
      (common-lisp:list
       (common-lisp:cons "payload"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          get-thing-shadow-response))
   (common-lisp:slot-value aws-sdk/generator/shape::input 'payload)))
(common-lisp:progn
 (common-lisp:define-condition internal-failure-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       internal-failure-exception-message)))
 (common-lisp:export
  (common-lisp:list 'internal-failure-exception
                    'internal-failure-exception-message)))
(common-lisp:progn
 (common-lisp:define-condition invalid-request-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       invalid-request-exception-message)))
 (common-lisp:export
  (common-lisp:list 'invalid-request-exception
                    'invalid-request-exception-message)))
(common-lisp:deftype json-document ()
  '(common-lisp:simple-array (common-lisp:unsigned-byte 8) (common-lisp:*)))
(common-lisp:progn
 (common-lisp:define-condition method-not-allowed-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       method-not-allowed-exception-message)))
 (common-lisp:export
  (common-lisp:list 'method-not-allowed-exception
                    'method-not-allowed-exception-message)))
(common-lisp:deftype payload ()
  '(common-lisp:simple-array (common-lisp:unsigned-byte 8) (common-lisp:*)))
(common-lisp:progn
 (common-lisp:defstruct
     (publish-request (:copier common-lisp:nil)
      (:conc-name "struct-shape-publish-request-"))
   (topic (common-lisp:error ":topic is required") :type
    (common-lisp:or topic common-lisp:null))
   (qos common-lisp:nil :type (common-lisp:or qos common-lisp:null))
   (payload common-lisp:nil :type (common-lisp:or payload common-lisp:null)))
 (common-lisp:export (common-lisp:list 'publish-request 'make-publish-request))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        ((aws-sdk/generator/shape::input publish-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        ((aws-sdk/generator/shape::input publish-request))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'payload))
      (common-lisp:list
       (common-lisp:cons "payload"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        ((aws-sdk/generator/shape::input publish-request))
   (common-lisp:slot-value aws-sdk/generator/shape::input 'payload)))
(common-lisp:deftype qos () 'common-lisp:integer)
(common-lisp:progn
 (common-lisp:define-condition request-entity-too-large-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       request-entity-too-large-exception-message)))
 (common-lisp:export
  (common-lisp:list 'request-entity-too-large-exception
                    'request-entity-too-large-exception-message)))
(common-lisp:progn
 (common-lisp:define-condition resource-not-found-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       resource-not-found-exception-message)))
 (common-lisp:export
  (common-lisp:list 'resource-not-found-exception
                    'resource-not-found-exception-message)))
(common-lisp:progn
 (common-lisp:define-condition service-unavailable-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       service-unavailable-exception-message)))
 (common-lisp:export
  (common-lisp:list 'service-unavailable-exception
                    'service-unavailable-exception-message)))
(common-lisp:deftype thing-name () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:define-condition throttling-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       throttling-exception-message)))
 (common-lisp:export
  (common-lisp:list 'throttling-exception 'throttling-exception-message)))
(common-lisp:deftype topic () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:define-condition unauthorized-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       unauthorized-exception-message)))
 (common-lisp:export
  (common-lisp:list 'unauthorized-exception 'unauthorized-exception-message)))
(common-lisp:progn
 (common-lisp:define-condition unsupported-document-encoding-exception
     (iot-data-error)
     ((message :initarg :message :initform common-lisp:nil :reader
       unsupported-document-encoding-exception-message)))
 (common-lisp:export
  (common-lisp:list 'unsupported-document-encoding-exception
                    'unsupported-document-encoding-exception-message)))
(common-lisp:progn
 (common-lisp:defstruct
     (update-thing-shadow-request (:copier common-lisp:nil)
      (:conc-name "struct-shape-update-thing-shadow-request-"))
   (thing-name (common-lisp:error ":thingname is required") :type
    (common-lisp:or thing-name common-lisp:null))
   (payload (common-lisp:error ":payload is required") :type
    (common-lisp:or json-document common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'update-thing-shadow-request
                    'make-update-thing-shadow-request))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          update-thing-shadow-request))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          update-thing-shadow-request))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'payload))
      (common-lisp:list
       (common-lisp:cons "payload"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          update-thing-shadow-request))
   (common-lisp:slot-value aws-sdk/generator/shape::input 'payload)))
(common-lisp:progn
 (common-lisp:defstruct
     (update-thing-shadow-response (:copier common-lisp:nil)
      (:conc-name "struct-shape-update-thing-shadow-response-"))
   (payload common-lisp:nil :type
    (common-lisp:or json-document common-lisp:null)))
 (common-lisp:export
  (common-lisp:list 'update-thing-shadow-response
                    'make-update-thing-shadow-response))
 (common-lisp:defmethod aws-sdk/generator/shape::input-headers
                        (
                         (aws-sdk/generator/shape::input
                          update-thing-shadow-response))
   (common-lisp:append))
 (common-lisp:defmethod aws-sdk/generator/shape::input-params
                        (
                         (aws-sdk/generator/shape::input
                          update-thing-shadow-response))
   (common-lisp:append
    (alexandria:when-let (aws-sdk/generator/shape::value
                          (common-lisp:slot-value
                           aws-sdk/generator/shape::input 'payload))
      (common-lisp:list
       (common-lisp:cons "payload"
                         (aws-sdk/generator/shape::input-params
                          aws-sdk/generator/shape::value))))))
 (common-lisp:defmethod aws-sdk/generator/shape::input-payload
                        (
                         (aws-sdk/generator/shape::input
                          update-thing-shadow-response))
   (common-lisp:slot-value aws-sdk/generator/shape::input 'payload)))
(common-lisp:deftype |errorMessage| () 'common-lisp:string)
(common-lisp:progn
 (common-lisp:defun delete-thing-shadow
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key thing-name)
   (common-lisp:declare (common-lisp:ignorable thing-name))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-delete-thing-shadow-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input 'iot-data-request
                                                        aws-sdk/generator/operation::input
                                                        "DELETE"
                                                        (common-lisp:lambda
                                                            (
                                                             aws-sdk/generator/operation::input)
                                                          (common-lisp:format
                                                           common-lisp:nil
                                                           "/things/~A/shadow"
                                                           (quri.encode:url-encode
                                                            (common-lisp:slot-value
                                                             aws-sdk/generator/operation::input
                                                             'thing-name))))
                                                        "DeleteThingShadow"
                                                        "2015-05-28"))
      "blob" common-lisp:nil
      '(("ResourceNotFoundException" . resource-not-found-exception)
        ("InvalidRequestException" . invalid-request-exception)
        ("ThrottlingException" . throttling-exception)
        ("UnauthorizedException" . unauthorized-exception)
        ("ServiceUnavailableException" . service-unavailable-exception)
        ("InternalFailureException" . internal-failure-exception)
        ("MethodNotAllowedException" . method-not-allowed-exception)
        ("UnsupportedDocumentEncodingException"
         . unsupported-document-encoding-exception)))))
 (common-lisp:export 'delete-thing-shadow))
(common-lisp:progn
 (common-lisp:defun get-thing-shadow
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key thing-name)
   (common-lisp:declare (common-lisp:ignorable thing-name))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-get-thing-shadow-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input 'iot-data-request
                                                        aws-sdk/generator/operation::input
                                                        "GET"
                                                        (common-lisp:lambda
                                                            (
                                                             aws-sdk/generator/operation::input)
                                                          (common-lisp:format
                                                           common-lisp:nil
                                                           "/things/~A/shadow"
                                                           (quri.encode:url-encode
                                                            (common-lisp:slot-value
                                                             aws-sdk/generator/operation::input
                                                             'thing-name))))
                                                        "GetThingShadow"
                                                        "2015-05-28"))
      "blob" common-lisp:nil
      '(("InvalidRequestException" . invalid-request-exception)
        ("ResourceNotFoundException" . resource-not-found-exception)
        ("ThrottlingException" . throttling-exception)
        ("UnauthorizedException" . unauthorized-exception)
        ("ServiceUnavailableException" . service-unavailable-exception)
        ("InternalFailureException" . internal-failure-exception)
        ("MethodNotAllowedException" . method-not-allowed-exception)
        ("UnsupportedDocumentEncodingException"
         . unsupported-document-encoding-exception)))))
 (common-lisp:export 'get-thing-shadow))
(common-lisp:progn
 (common-lisp:defun publish
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key topic qos payload)
   (common-lisp:declare (common-lisp:ignorable topic qos payload))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-publish-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input 'iot-data-request
                                                        aws-sdk/generator/operation::input
                                                        "POST"
                                                        (common-lisp:lambda
                                                            (
                                                             aws-sdk/generator/operation::input)
                                                          (common-lisp:format
                                                           common-lisp:nil
                                                           "/topics/~A"
                                                           (quri.encode:url-encode
                                                            (common-lisp:slot-value
                                                             aws-sdk/generator/operation::input
                                                             'topic))))
                                                        "Publish"
                                                        "2015-05-28"))
      common-lisp:nil common-lisp:nil
      '(("InternalFailureException" . internal-failure-exception)
        ("InvalidRequestException" . invalid-request-exception)
        ("UnauthorizedException" . unauthorized-exception)
        ("MethodNotAllowedException" . method-not-allowed-exception)))))
 (common-lisp:export 'publish))
(common-lisp:progn
 (common-lisp:defun update-thing-shadow
                    (
                     common-lisp:&rest aws-sdk/generator/operation::args
                     common-lisp:&key thing-name payload)
   (common-lisp:declare (common-lisp:ignorable thing-name payload))
   (common-lisp:let ((aws-sdk/generator/operation::input
                      (common-lisp:apply 'make-update-thing-shadow-request
                                         aws-sdk/generator/operation::args)))
     (aws-sdk/generator/operation::parse-response
      (aws-sdk/api:aws-request
       (aws-sdk/generator/shape:make-request-with-input 'iot-data-request
                                                        aws-sdk/generator/operation::input
                                                        "POST"
                                                        (common-lisp:lambda
                                                            (
                                                             aws-sdk/generator/operation::input)
                                                          (common-lisp:format
                                                           common-lisp:nil
                                                           "/things/~A/shadow"
                                                           (quri.encode:url-encode
                                                            (common-lisp:slot-value
                                                             aws-sdk/generator/operation::input
                                                             'thing-name))))
                                                        "UpdateThingShadow"
                                                        "2015-05-28"))
      "blob" common-lisp:nil
      '(("ConflictException" . conflict-exception)
        ("RequestEntityTooLargeException" . request-entity-too-large-exception)
        ("InvalidRequestException" . invalid-request-exception)
        ("ThrottlingException" . throttling-exception)
        ("UnauthorizedException" . unauthorized-exception)
        ("ServiceUnavailableException" . service-unavailable-exception)
        ("InternalFailureException" . internal-failure-exception)
        ("MethodNotAllowedException" . method-not-allowed-exception)
        ("UnsupportedDocumentEncodingException"
         . unsupported-document-encoding-exception)))))
 (common-lisp:export 'update-thing-shadow))
