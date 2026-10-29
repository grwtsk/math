import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.PairCorrelation

set_option autoImplicit false

namespace Think.Validation.PairCorrelationSanity

theorem montgomery_policy_is_regularizer_only :
    Think.RadoProjectedModularHeatflow.montgomeryGUEPolicy.regularizerOnly = true :=
  Think.RadoProjectedModularHeatflow.montgomeryGUEPolicy_regularizerOnly

end Think.Validation.PairCorrelationSanity
