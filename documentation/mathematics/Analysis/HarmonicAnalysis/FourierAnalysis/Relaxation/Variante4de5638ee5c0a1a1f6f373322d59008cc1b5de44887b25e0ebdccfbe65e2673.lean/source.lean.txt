-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.RelaxationParameter.Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.RelaxationParameter.Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/WalshFourier/Relaxation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.WalshFourier.Analysis


namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.RelaxationParameter.Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd

namespace Boolean.Cube

namespace WalshFourier

/-- A nonnegative rational relaxation parameter, represented as `numerator / denominator`. -/
structure RelaxationParameter where
  numerator : Nat
  denominator : Nat
  positiveDenominator : 0 < denominator
deriving Repr, DecidableEq

/-- The Walsh eigenvalue of the unnormalized hypercube Laplacian. -/
def laplacianEigenvalue {n : Nat}
    (S : WalshFourier.Frequency n) : Nat :=
  2 * WalshFourier.degree S

/-- Walsh character eigenvalue statement for the unnormalized hypercube Laplacian. -/
theorem laplacianEigenvalue_walshCharacter {n : Nat}
    (S : WalshFourier.Frequency n) :
    WalshFourier.laplacianEigenvalue S = 2 * WalshFourier.degree S := rfl

/--
Spectral numerator for the relaxation multiplier
`1 - epsilon * lambda_S`, with denominator `epsilon.denominator`.
-/
def relaxationMultiplierNumerator {n : Nat}
    (epsilon : RelaxationParameter)
    (S : WalshFourier.Frequency n) : Int :=
  (epsilon.denominator : Int) -
    (epsilon.numerator : Int) * (WalshFourier.laplacianEigenvalue S : Int)

/-- Spectral multiplier of `R_epsilon = I - epsilon * L_n` at frequency `S`. -/
def relaxationMultiplier {n : Nat}
    (epsilon : RelaxationParameter)
    (S : WalshFourier.Frequency n) :
    Fourier.Dyadic where
  numerator := WalshFourier.relaxationMultiplierNumerator epsilon S
  exponent := epsilon.denominator

/--
Spectral action numerator of `R_epsilon` on a Walsh coordinate. The represented
coordinate has the original Walsh denominator and the relaxation denominator.
-/
def relaxationProjectionNumerator {n : Nat}
    (epsilon : RelaxationParameter)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) : Int :=
  WalshFourier.relaxationMultiplierNumerator epsilon S *
    WalshFourier.projectionNumerator f S

/-- `R_epsilon` acts diagonally in Walsh coordinates with multiplier `1 - epsilon * 2|S|`. -/
theorem relaxationProjectionNumerator_eq {n : Nat}
    (epsilon : RelaxationParameter)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.relaxationProjectionNumerator epsilon f S =
      ((epsilon.denominator : Int) -
          (epsilon.numerator : Int) * (2 * WalshFourier.degree S : Nat)) *
        WalshFourier.projectionNumerator f S := by
  rfl

/-- Exact finite interval `0 <= epsilon <= 1 / n`, encoded without division. -/
def contractionInterval (n : Nat) (epsilon : RelaxationParameter) : Prop :=
  n * epsilon.numerator ≤ epsilon.denominator

/-- Markov transition interval for `R_epsilon = (1 - n epsilon) I + epsilon A`. -/
def markovTransitionInterval (n : Nat) (epsilon : RelaxationParameter) : Prop :=
  n * epsilon.numerator ≤ epsilon.denominator

/-- The contraction and Markov interval conditions are the same finite inequality. -/
theorem contractionInterval_iff_markovTransitionInterval
    (n : Nat)
    (epsilon : RelaxationParameter) :
    WalshFourier.contractionInterval n epsilon ↔
      WalshFourier.markovTransitionInterval n epsilon := by
  rfl

/-- Numerator of the stay-put weight `1 - n epsilon`. -/
def markovStayNumerator
    (n : Nat)
    (epsilon : RelaxationParameter) : Nat :=
  epsilon.denominator - n * epsilon.numerator

/-- Numerator of each neighbor weight in the Markov interpretation. -/
def markovEdgeNumerator
    (_n : Nat)
    (epsilon : RelaxationParameter) : Nat :=
  epsilon.numerator

/--
When `0 <= epsilon <= 1/n`, the stay-put mass plus the `n` neighbor masses has
total numerator equal to the common denominator.
-/
theorem markov_rowMass_numerator
    (n : Nat)
    (epsilon : RelaxationParameter)
    (h : WalshFourier.markovTransitionInterval n epsilon) :
    WalshFourier.markovStayNumerator n epsilon +
        n * WalshFourier.markovEdgeNumerator n epsilon =
      epsilon.denominator := by
  unfold WalshFourier.markovStayNumerator
    WalshFourier.markovEdgeNumerator
    WalshFourier.markovTransitionInterval at *
  exact Nat.sub_add_cancel h

/--
The finite relaxation package: spectral Walsh data plus the exact interval
condition used for contraction and Markov transition semantics.
-/
structure FiniteRelaxationOperator where
  dimension : Nat
  epsilon : RelaxationParameter
  inContractionInterval : WalshFourier.contractionInterval dimension epsilon

/-- A finite relaxation operator also satisfies the Markov interval predicate. -/
theorem FiniteRelaxationOperator.markovTransition
    (R : FiniteRelaxationOperator) :
    WalshFourier.markovTransitionInterval R.dimension R.epsilon :=
  R.inContractionInterval

/-- Row-mass identity for the Markov interpretation of a finite relaxation operator. -/
theorem FiniteRelaxationOperator.markovRowMass
    (R : FiniteRelaxationOperator) :
    WalshFourier.markovStayNumerator R.dimension R.epsilon +
        R.dimension * WalshFourier.markovEdgeNumerator R.dimension R.epsilon =
      R.epsilon.denominator :=
  WalshFourier.markov_rowMass_numerator
    R.dimension R.epsilon R.markovTransition

end WalshFourier

end Boolean.Cube
