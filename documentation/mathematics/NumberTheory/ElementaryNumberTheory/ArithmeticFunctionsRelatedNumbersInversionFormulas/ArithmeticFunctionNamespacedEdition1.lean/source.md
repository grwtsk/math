# Arithmetic Function Namespaced Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f23c87440097ccf7ec07fd49363ca517082bd12c` · SHA-256 `2e196e6f6cfceb0d8746fe989c87e1f48ca9780be9e828e63bb30850e58b35c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithmeticFunction.Variantdf20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.ArithmeticFunction.Variantdf20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"df20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Number/ArithmeticFunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Number.Payload

/-!
# Discrete arithmetic functions

Arithmetic functions belong to `Number`, not to `AnalyticNumber`.

This file contains discrete number-theoretic shells.  Convergence of associated
Dirichlet series is not stated here.  That belongs to `AnalyticNumber`.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ArithmeticFunction.Variantdf20e25104f42b1af4299a2b854d605c4b4633add1d60802ad61a30e4f4ce4db

namespace Number

/-- Arithmetic function shell indexed by natural numbers, ignoring zero. -/
structure ArithmeticFunction where
  value : Nat → Int
  ignoresZero : value 0 = 0

/--
Certificate-gated Dirichlet convolution statement.

This is still discrete arithmetic.  A future Mathlib-backed implementation may
replace this shell with actual finite divisor-sum proofs.
-/
structure DirichletConvolutionCertificate
    (_f _g _h : ArithmeticFunction) where
  convolutionSound : Prop
  convolutionProof : convolutionSound

/-- The constant-one arithmetic function. -/
def oneFunction : ArithmeticFunction where
  value := fun n => if n = 0 then 0 else 1
  ignoresZero := by simp

/-- Dirichlet identity function ε. -/
def epsilonFunction : ArithmeticFunction where
  value := fun n => if n = 1 then 1 else 0
  ignoresZero := by simp

/-- Möbius function shell, as a discrete arithmetic object. -/
structure MobiusFunction where
  function : ArithmeticFunction
  inverseOfOne :
    DirichletConvolutionCertificate oneFunction function epsilonFunction

theorem dirichlet_convolution_sound
    {f g h : ArithmeticFunction}
    (C : DirichletConvolutionCertificate f g h) :
    C.convolutionSound :=
  C.convolutionProof

theorem mobius_inverse_of_one
    (μ : MobiusFunction) :
    μ.inverseOfOne.convolutionSound :=
  μ.inverseOfOne.convolutionProof

/--
A discrete arithmetic function does not define an analytic Dirichlet series by
itself.  The analytic series object is introduced later in `AnalyticNumber`.
-/
def ArithmeticFunctionOwnsAnalyticSeries
    (_f : ArithmeticFunction) : Prop :=
  False

theorem arithmetic_function_not_analytic_series
    (f : ArithmeticFunction) :
    ¬ ArithmeticFunctionOwnsAnalyticSeries f := by
  intro h
  exact h

end Number
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1bda85d66515aceff056037d4077c21f5c4e9aaab901ca55de9bc247fe9da1b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantd7398102b6e82b1050c1ad64f07592ca47ea067d558f288df30390f768c120ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
