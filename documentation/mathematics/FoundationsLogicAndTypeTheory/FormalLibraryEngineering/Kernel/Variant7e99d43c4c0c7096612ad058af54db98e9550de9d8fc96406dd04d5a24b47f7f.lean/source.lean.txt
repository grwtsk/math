/-!
# Heat-flow kernel descriptors

What is formalized:
Typed local descriptors for heat kernels, heat-flow parameters, and transport
certificates used by the canonical `Surface.Flow.Heat` namespace.

What is certificate-gated:
Kernel normalization, positivity preservation, and transport soundness are
Prop-valued certificate fields supplied by callers.

What is not claimed:
This file does not import or prove Extended EML coverage, BinaryLogicMatrix
flow equivalence, analytic heat-kernel theory, spectral correspondence, or
homological stability.

Primary mathematical source:
Internal Surface flow-boundary discipline.
-/

namespace Surface

structure HeatKernelDescriptor where
  name : String
  normalized : Prop
  positivityPreserving : Prop

structure HeatFlowDescriptor where
  kernel : HeatKernelDescriptor
  timeParameter : Nat
  kernelSound : Prop

structure HeatFlowTransportCertificate where
  descriptor : HeatFlowDescriptor
  transportSound : Prop

/--
Accessor for the kernel-soundness hypothesis stored in a heat-flow transport
certificate.

This is not an analytic heat-flow theorem and does not prove transport,
smoothing, spectral convergence, or homological stability.
-/
theorem HeatFlowTransportCertificate.kernelSound_id
    (cert : HeatFlowTransportCertificate) :
    cert.descriptor.kernelSound -> cert.descriptor.kernelSound := by
  intro h
  exact h

end Surface
