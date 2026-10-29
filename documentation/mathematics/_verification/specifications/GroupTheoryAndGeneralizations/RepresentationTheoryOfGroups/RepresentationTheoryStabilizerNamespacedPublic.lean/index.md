# Verification target: Representation Theory Stabilizer Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79e707c53ffac6da91d137e6e4998d64bfb9448c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Stabilizer/Variantff609f309f7972b03ccb758013ae1cf21a4429c07f50e926b6ab8e2d2152c820.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79e707c53ffac6da91d137e6e4998d64bfb9448c`.

Source path: `GRWTSK/Algebra/GroupTheory/Stabilizer/Variantff609f309f7972b03ccb758013ae1cf21a4429c07f50e926b6ab8e2d2152c820.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Stabilizer/Variantff609f309f7972b03ccb758013ae1cf21a4429c07f50e926b6ab8e2d2152c820.lean.json)

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
| 1 | `def` | [stabilizer](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/declarations/stabilizer.md) | 35 | `declaration-track:53ce88a6ab48529fe610692eef409ae3740047856179f0ba86b7d66581a1df3e` |
| 2 | `lemma` | [mem_stabilizer](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/declarations/mem-stabilizer.md) | 44 | `result-track:9e0916eba9dfb4ffa55d5d394a4aaad285c2b2c51ba3fdc739d772bc7f624790` |
| 3 | `lemma` | [stabilizer_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/declarations/stabilizer-zero.md) | 48 | `result-track:2adb78b134f0f93a9605288ce470bb0a28ac7b40dbbdb52e7be10b9cb5df8a04` |
| 4 | `lemma` | [le_stabilizer_smul](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/declarations/le-stabilizer-smul.md) | 51 | `result-track:251664717ebdec09740f4e87637e38a56566a6b88bef50ddad40f53e6f929e02` |
| 5 | `lemma` | [le_stabilizer_add](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/declarations/le-stabilizer-add.md) | 55 | `result-track:bf7d3e98c1da0c99a00ee7f827beae3f4e83e1ce681fd4195ba688cff5ad8f4f` |
| 6 | `lemma` | [le_stabilizer_sum](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/declarations/le-stabilizer-sum.md) | 59 | `result-track:17e1a52e74a833a4b8f45fffa376097522aad10e6261ac8e62648eb4d61b96bd` |
| 7 | `lemma` | [IntertwiningMap.stabilizer_le](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/declarations/intertwiningmap-stabilizer-le.md) | 63 | `result-track:0242d69b5a895a3df5e56298b8f61b3785ce38d244a2c82d7547db2d67a5628e` |
| 8 | `lemma` | [stabilizer_conj](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryStabilizerNamespacedPublic.lean/declarations/stabilizer-conj.md) | 68 | `result-track:4400f084bdffd2d73e7f7de17537690f90940b8cfd7ed350dc6bfb097899655d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c48c8716ee94d52ead90c5645aad9404e87ba7460b4fe7be4d451dfb73206cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Stabilizer/Variantff609f309f7972b03ccb758013ae1cf21a4429c07f50e926b6ab8e2d2152c820.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Stabilizer/Variantff609f309f7972b03ccb758013ae1cf21a4429c07f50e926b6ab8e2d2152c820.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
