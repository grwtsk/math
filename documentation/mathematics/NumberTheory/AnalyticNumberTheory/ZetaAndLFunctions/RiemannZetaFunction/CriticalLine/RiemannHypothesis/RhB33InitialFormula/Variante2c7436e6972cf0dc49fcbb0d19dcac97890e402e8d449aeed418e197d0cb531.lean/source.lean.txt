import FormalResearch.RiemannHypothesis.Laplace.InitialFormula

#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.integral_norms_summable
#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.integral_tsum_occurrences
#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.weightedSource_laplace_integrable
#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.equation20
#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.initial_formula_checkpoint

example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.rCoeff 0 = 11025 := rfl
example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.rCoeff 8 = 1 := rfl
example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.sCoeff 0 = 11025 := rfl
example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.sCoeff 8 = 1 := rfl

example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.InitialFormulaCheckpoint :=
  FormalResearch.RiemannHypothesis.Laplace.InitialFormula.initial_formula_checkpoint
