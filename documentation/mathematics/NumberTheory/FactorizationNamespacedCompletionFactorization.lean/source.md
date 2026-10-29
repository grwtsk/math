# Factorization Namespaced Completion Factorization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe9f62330a0b58bd03f92f1227ccf569d1d8bef8` · SHA-256 `75f409bb985e54ace12645349edf0daba198ee03406262a26220d7719b33b8c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.CompletionFactorization.Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.CompletionFactorization.Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Obstruction/Factorization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Obstruction.MUS

/-!
# Independent completion factorization

Support disjointness does not imply a product decomposition.  The split,
satisfaction equivalence, no-cross-constraint law, and symmetry
compatibility are carried explicitly.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.CompletionFactorization.Variant845441406662f2c8380450a0cc55b70bf2fb7b119ce2f79517ba97476e6b098d

namespace Mathematics.BinaryFrontier.Obstruction

open Mathematics.BinaryFrontier.Completion

universe uPartial uFull uConstraint uLeft uRight uCoordinate

structure CompletionFactorization
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    (semantics :
      Semantics Partial Full Constraint)
    (left right : Finset Constraint)
    (partial : Partial) where
  LeftFull : Type uLeft
  RightFull : Type uRight
  split :
    Full ≃ LeftFull × RightFull
  leftSatisfaction :
    LeftFull → Prop
  rightSatisfaction :
    RightFull → Prop
  factors :
    ∀ completion,
      semantics.SatisfiesAll
          completion (left ∪ right) ↔
        leftSatisfaction (split completion).1 ∧
          rightSatisfaction (split completion).2

structure CoprimeObstructionCertificate
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    (leftCore rightCore :
      PrimitiveCore
        semantics registry partial)
    (Coordinate : Type uCoordinate)
    [DecidableEq Coordinate] where
  protectedSupport :
    Constraint → Finset Coordinate
  support_disjoint :
    Disjoint
      (leftCore.constraints.biUnion
        protectedSupport)
      (rightCore.constraints.biUnion
        protectedSupport)
  crossConstraint :
    Constraint → Prop
  no_cross_constraints :
    ∀ constraint ∈
        leftCore.constraints ∪
          rightCore.constraints,
      ¬crossConstraint constraint
  completion_factors :
    CompletionFactorization
      semantics
      leftCore.constraints
      rightCore.constraints
      partial
  quotientCompatible : Prop
  quotient_compatible :
    quotientCompatible

theorem coprime_core_factorization_sound
    {Partial : Type uPartial}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    [DecidableEq Constraint]
    {semantics :
      Semantics Partial Full Constraint}
    {registry : Finset Constraint}
    {partial : Partial}
    {leftCore rightCore :
      PrimitiveCore
        semantics registry partial}
    {Coordinate : Type uCoordinate}
    [DecidableEq Coordinate]
    (certificate :
      CoprimeObstructionCertificate
        leftCore rightCore Coordinate)
    (completion : Full) :
    semantics.SatisfiesAll completion
        (leftCore.constraints ∪
          rightCore.constraints) ↔
      certificate.completion_factors.leftSatisfaction
          (certificate.completion_factors.split
            completion).1 ∧
        certificate.completion_factors.rightSatisfaction
          (certificate.completion_factors.split
            completion).2 :=
  certificate.completion_factors.factors
    completion

end Mathematics.BinaryFrontier.Obstruction
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37cba292b27c70028f3f28c3c49afb829ef3270ab5c05b1ee675285fea62e2ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Factorization/Variant3111419e55f641bd2f01439e2b7c65b16d1f214dc52bb0dcdbbcaa5e10bb822b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
