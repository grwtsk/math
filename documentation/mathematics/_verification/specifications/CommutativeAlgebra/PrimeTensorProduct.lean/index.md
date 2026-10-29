# Verification target: Prime Tensor Product

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f42aaf92664a76d59fcdf17c9e294a32d856e6b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PrimeTensorProduct.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PrimeTensorProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f42aaf92664a76d59fcdf17c9e294a32d856e6b`.

Source path: `GRWTSK/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SurjectiveOnStalks` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimeSpectrum.tensorProductTo](../../../../CommutativeAlgebra/PrimeTensorProduct.lean/declarations/primespectrum-tensorproductto.md) | 27 | `declaration-track:78d350225cf592724d2c5e25eb6e0a4769ebb99e7cef0930156d9c141e5d980d` |
| 2 | `lemma` | [PrimeSpectrum.continuous_tensorProductTo](../../../../CommutativeAlgebra/PrimeTensorProduct.lean/declarations/primespectrum-continuous-tensorproductto.md) | 32 | `result-track:400859bd0224d5a8928c4fed8d43df161d51727516db2c3e11634d030dd9b384` |
| 3 | `lemma` | [PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks_aux](../../../../CommutativeAlgebra/PrimeTensorProduct.lean/declarations/primespectrum-isembedding-tensorproductto-of-surjectiveonstalks-aux.md) | 38 | `result-track:a3a5042bd3edae130a33d0f1eca0d9857800bdc438c2c4b3e863546661a79fcf` |
| 4 | `lemma` | [PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks](../../../../CommutativeAlgebra/PrimeTensorProduct.lean/declarations/primespectrum-isembedding-tensorproductto-of-surjectiveonstalks.md) | 59 | `result-track:cc5e0da20c58152d343de889a1cd5be7e5fdb3e45ccdcca4ed8359eb6686add6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21c2414e27c15f171a00aa9de57b48cd6911ca92129e669638fab750f9b70506 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean","GRWTSK/_verification/specifications/Algebra/TensorProduct/Variantf9579fd3d6dc3f8de70c5e19b04fee8f7f0d0c0882c623aa793d2923800a4339.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
