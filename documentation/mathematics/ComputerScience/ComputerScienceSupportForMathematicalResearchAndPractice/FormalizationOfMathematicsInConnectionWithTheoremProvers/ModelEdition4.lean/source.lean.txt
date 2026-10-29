import MathDiscovery.Kernel.Channel

/-!
# Arbitrary-project kernel models

A project snapshot may expose any index type.  It supplies a finite number of
feature channels, each of finite dimension.  The kernel construction itself
contains no references to source paths or to the project that defines it.
-/

noncomputable section

namespace MathDiscovery.Kernel

universe u

/-- Complete semantic-kernel input for one finite project snapshot. -/
structure ProjectKernelModel (Index : Type u) where
  channelCount : Nat
  channel : Fin channelCount → FeatureChannelModel Index

/-- Semantic kernel of one project snapshot. -/
def ProjectKernelModel.semanticKernel
    {Index : Type u} (model : ProjectKernelModel Index) : PositiveKernel Index :=
  featureChannelKernel fun index => (model.channel index).toKernelChannel

end MathDiscovery.Kernel
