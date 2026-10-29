# Verification target: Noetherian Descent Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6ff5fc455611e01e0150760ab9d6660ffe0600f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NoetherianDescent/Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6ff5fc455611e01e0150760ab9d6660ffe0600f`.

Source path: `GRWTSK/Algebra/NoetherianDescent/Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NoetherianDescent/Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DescentAux](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/descentaux.md) | 34 | `declaration-track:ecaf2ddba0b1fe1d12303161659f7e91173898d58e7ae83da711bc0f2b49f25c` |
| 2 | `def` | [subalgebra](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/subalgebra.md) | 56 | `declaration-track:fbdbb3b677ad858c9e592c39493739cac2e84a91b9c43a81cee65b8899db55bc` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/instance.md) | 65 | `declaration-track:138568c33ffdc23f9e7f46dc85f2369cd61f325bc321b86aa25516e832da12e1` |
| 4 | `instance` | [algebra₀](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/algebra.md) | 70 | `declaration-track:676403689fd3a5957c070bc95076d093b192dba4c7ae60e5671b5030f462f298` |
| 5 | `instance` | [algebra₁](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/algebra-source-edition-2.md) | 75 | `declaration-track:8ce774e19e715b5c9894afb51bed61421f4f8fcb5979ea89c12d197b8ec36b69` |
| 6 | `instance` | [algebra₂](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/algebra-source-edition-3.md) | 80 | `declaration-track:9a13a8c5f6a8f5923109332f7a57febd28cd509f24eb404fb942da963aab5c01` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:74ceac3c13d80ef44773011982a34d2f6d889b77a784eadddae6c8c846123d73` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/instance-source-edition-3.md) | 86 | `declaration-track:ce4539c526abd7266ad7a2fa5271aff9411a9f21666b9d90ed14418b8f04b6a5` |
| 9 | `lemma` | [fg_subalgebra](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/fg-subalgebra.md) | 88 | `result-track:76fad973ac549bc41d9aea6022421bf8e34f709cd7360c007f6efed25127b066` |
| 10 | `instance` | [hasCoeffs](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/hascoeffs.md) | 99 | `declaration-track:ec1f16fe83de8e1f2b09576edd7c163f033c7d31a5eacaf6dde108edd1008208` |
| 11 | `lemma` | [coeffs_h_subset](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/coeffs-h-subset.md) | 115 | `result-track:18b15f4b628f4085f4bedaf483cf27caf349470ce87f2c587a88c9b81feb0971` |
| 12 | `lemma` | [coeffs_p_subset](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/coeffs-p-subset.md) | 127 | `result-track:228855c89c8916cc8e3ee03994d14293ac050900be3fdbb323d0e7b69846e7a7` |
| 13 | `lemma` | [coeffs_q_subset](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/coeffs-q-subset.md) | 143 | `result-track:edd74b2eb93dec6b997c50c3b7d1776c85dbe0fdea4dc2a4bcf89ddb11b3ff12` |
| 14 | `lemma` | [exists_kerSquareLift_comp_eq_id](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/exists-kersquarelift-comp-eq-id.md) | 159 | `result-track:8878c2ac94f737b2f944df7a9e0f6c0bb4ac9fc579dcf28bc77a00db7e694c3a` |
| 15 | `theorem` | [exists_subalgebra_fg](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/exists-subalgebra-fg.md) | 214 | `result-track:f8c0ad16c3fb389106a4805c93a7846c714b1692e343f0fb61ae96114f7a0094` |
| 16 | `theorem` | [exists_finiteType](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/exists-finitetype.md) | 261 | `result-track:e0b055e59b86e54b441154911449955efc6e30b851170cb28c319c0dea0a48a7` |
| 17 | `theorem` | [_root_.Algebra.IsStandardSmoothOfRelativeDimension.exists_subalgebra_fg](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/root-algebra-isstandardsmoothofrelativedimension-exists-subalgebra-fg.md) | 270 | `result-track:c35859b014c671dbe3e96da24f9b46c69aaa43965742211658fee3d809daf1f2` |
| 18 | `theorem` | [_root_.Algebra.Etale.exists_subalgebra_fg](../../../../CommutativeAlgebra/NoetherianDescentPublic.lean/declarations/root-algebra-etale-exists-subalgebra-fg.md) | 287 | `result-track:1088755a8d03f5f64742b7d94a7a407bf42dc5708533e7e7132ad9257855fbaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9544a24275a592c85e5257b4d13ab9721cbd5b1082d340c8388cb5871c84efb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/NoetherianDescent/Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.lean","GRWTSK/_verification/specifications/Algebra/NoetherianDescent/Variantadb740c2a8de4d5284e0c523d18a5e78a29bcea8442f974998e0e5d8f4c5dec9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
