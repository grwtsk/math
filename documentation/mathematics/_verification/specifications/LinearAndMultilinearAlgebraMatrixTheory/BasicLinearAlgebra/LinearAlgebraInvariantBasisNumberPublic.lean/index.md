# Verification target: Linear Algebra Invariant Basis Number Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f1dd95ebb2e8af2edc1572aca3f015df3ae5432",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f1dd95ebb2e8af2edc1572aca3f015df3ae5432`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrongRankCondition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/strongrankcondition.md) | 121 | `declaration-track:46b261726466f9e498a3cf1cde9143bc29cdbb38d241126163ed8ba46f511a5c` |
| 2 | `theorem` | [le_of_fin_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/le-of-fin-injective.md) | 125 | `result-track:40cb207812ccc8a4a5b203d0c1ba302650c9e8197b9b4bc4f44978ec65df54d3` |
| 3 | `theorem` | [strongRankCondition_iff_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/strongrankcondition-iff-succ.md) | 131 | `result-track:c313787526ffb41f7ea17ca71abc38d2f4da045e57b7844ccc7033f7c9e317cb` |
| 4 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/anonymous-instance-source-line-142-occurrence-2.md) | 142 | `declaration-track:9e6bfb2934ef2f2dba97fe3c4e6bc910621578bae381f630a7f8a9e485e573bd` |
| 5 | `theorem` | [card_le_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/card-le-of-injective.md) | 151 | `result-track:4ad3c4196c9bc84e7bfdf6bf11b8289104bea837067ced84835151c11a5efa5c` |
| 6 | `theorem` | [card_le_of_injective'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/card-le-of-injective-source-line-158-occurrence-2.md) | 158 | `result-track:9895e698757231c36d5f86ca9a04def7835e83f32d0c58c3c7e66cb5141a672c` |
| 7 | `class` | [RankCondition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/rankcondition.md) | 166 | `declaration-track:317c47f7560d25b4c5f5e8a187af044c66860f8e26560b44996de5152f45ff62` |
| 8 | `theorem` | [le_of_fin_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/le-of-fin-surjective.md) | 170 | `result-track:a9b6f836aee006bca77687f0ad41040d4e179dfddcc716f351ebea8b35d5a087` |
| 9 | `theorem` | [card_le_of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/card-le-of-surjective.md) | 174 | `result-track:238b0ad20c37644f8053c96781b789c384b58795db5c121600de2267de9a2e38` |
| 10 | `theorem` | [card_le_of_surjective'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/card-le-of-surjective-source-line-181-occurrence-2.md) | 181 | `result-track:48993a94aba7448ad1484df4e91721461160d77e33fcd4bdfbe1243b13d8681a` |
| 11 | `theorem` | [Module.Finite.exists_nat_not_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/exists-nat-not-surjective.md) | 187 | `result-track:ae39f1050b71ba79868df1bb5b6897852e8f4e05f0e755ec5f481236419b22c8` |
| 12 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/anonymous-instance-source-line-196-occurrence-2.md) | 196 | `declaration-track:fc5abac5feaa1787af4e28e2433f7ed338e2cb8672f425978323e856e04eadd5` |
| 13 | `class` | [InvariantBasisNumber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/invariantbasisnumber.md) | 204 | `declaration-track:c9e44f856da758dea291b3d41030d8dea2136e13f18544fecafe6faa170b5c85` |
| 14 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/anonymous-instance-source-line-208-occurrence-2.md) | 208 | `declaration-track:f6de9cadcd3b6cb5090bbaf08e5838ac00757f7d8a6320cb0f4b7619ff7f55e2` |
| 15 | `theorem` | [strongRankCondition_iff_forall_not_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/strongrankcondition-iff-forall-not-injective.md) | 214 | `result-track:0204a2caa83923cc7da37722e7b4c0bdee254377a6cb0f2eaafb6fc0c16e63b5` |
| 16 | `theorem` | [eq_of_fin_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/eq-of-fin-equiv.md) | 228 | `result-track:cadb257d8ca256d6857d9425b373a561dfd7c97409a492ff9d1a18443be79e8a` |
| 17 | `theorem` | [card_eq_of_linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/card-eq-of-linearequiv.md) | 231 | `result-track:432be6088786cd3f602a669433f88b91a8edace1d05c245972e6a5f7e5f25054` |
| 18 | `theorem` | [nontrivial_of_invariantBasisNumber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/nontrivial-of-invariantbasisnumber.md) | 237 | `result-track:93315f65b4d8bc05015810948401fd5409c9164442d85ed7cff92cdb1ad96189` |
| 19 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/anonymous-instance-source-line-249-occurrence-2.md) | 249 | `declaration-track:64f88995929e0f464805cf95ffb58ea24b223e38e6a895b3299d5db035430b5b` |
| 20 | `def` | [induced_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/induced-map.md) | 274 | `declaration-track:3907a4c8412e6b92a984633f38beedb8d443e9c062e8c3acc2a83a85bc47324f` |
| 21 | `def` | [inducedEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/inducedequiv.md) | 284 | `declaration-track:9a5da66f6cf7a522f99d4cfe7de7e5bc646ed054ef9892adb65a631446676f09` |
| 22 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraInvariantBasisNumberPublic.lean/declarations/anonymous-instance.md) | 313 | `declaration-track:379e4c2c801869480e49df64d5b8d66f81ad959d71c8b2567e49a65d781a14fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=170a95cbdca12d653e8c5b5b52eda94f2f8cbdb7b887b68c4d686579fd2336a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/InvariantBasisNumber/Variant063dedc0ad76cb70cdc60b87439b33db63020db456168f99023a9c0b1d42a99a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
