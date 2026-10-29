# Verification target: Group Self Inv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4ad172301f17fed8954a245153b8e4b06c6a1f0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SelfInv/Varianta24cfc4d83e8f03c6e263093fc97f5291a0fef5ded5559e8b92b62f9b445a047.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4ad172301f17fed8954a245153b8e4b06c6a1f0`.

Source path: `GRWTSK/Algebra/GroupTheory/SelfInv/Varianta24cfc4d83e8f03c6e263093fc97f5291a0fef5ded5559e8b92b62f9b445a047.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SelfInv/Varianta24cfc4d83e8f03c6e263093fc97f5291a0fef5ded5559e8b92b62f9b445a047.lean.json)

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
| 1 | `def` | [IsSelfInv](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv.md) | 32 | `declaration-track:734341272521d3207b86e00c4331fb854e4359d2b9d5d610e21ddc9d0020a57c` |
| 2 | `lemma` | [isSelfInv_iff](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-iff.md) | 35 | `result-track:8133bdd391d8e54ebeb4e31ae7939e2f2ee9788082d89fb21fd65446e5fc8998` |
| 3 | `lemma` | [IsSelfInv.eq_inv](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-eq-inv.md) | 41 | `result-track:26cf4f165afe7803530d501c3bc85ac2bcbcc5bb4403a8da7b651d21caf513b9` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/instance.md) | 44 | `declaration-track:64da9b9a9af8dec1c4b17196619510cb78ee0c17ac6ff2b62621888cb7268912` |
| 5 | `lemma` | [IsSelfInv.one](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-one.md) | 49 | `result-track:f3a5ae4617542dd2d037ce6f0132e3a4774fd82be18c87838563f5e933151eb1` |
| 6 | `lemma` | [isSelfInv_inv](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-inv.md) | 52 | `result-track:a79e09e8badefd3a02065f1f86687224ac1fff5c224c0e4aba3bae4c82d45056` |
| 7 | `lemma` | [IsSelfInv.conj](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-conj.md) | 59 | `result-track:9efcb66ac8f8fb7102a7d30ac38a576fc10afbd0fec8a275fc1913397c3b5a5d` |
| 8 | `lemma` | [isSelfInv_conj_iff](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-conj-iff.md) | 64 | `result-track:5d9ee91bceffcd8b94f8e8364da4edab9f9aadbcddb65dac20cb02a2d7c1cf4a` |
| 9 | `lemma` | [IsSelfInv.pow](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-pow.md) | 68 | `result-track:58d8461f4304fcf091fb3e8bd07d5f2c6afb9a7d294a6059059b64f66a6f2c43` |
| 10 | `lemma` | [IsSelfInv.zpow](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-zpow.md) | 73 | `result-track:d6c7e7e72d9ea6dfbaa1f98cf5a28ce2fed4a15fc0a95d53693802478f88426f` |
| 11 | `lemma` | [isSelfInv_iff_sq_eq_one](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-iff-sq-eq-one.md) | 78 | `result-track:e9cdb7cbbe7e5373fadc9b1e7c8ea7b04d114174b37e187c69dd24a32ee8bc8b` |
| 12 | `lemma` | [IsSelfInv.mul](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-mul.md) | 86 | `result-track:12a0370b4c130b0988e323e7a87fa90ce1753d709c75d74a69115a2c5050aeea` |
| 13 | `lemma` | [IsSelfInv.div](../../../../GroupTheoryAndGeneralizations/GroupSelfInvPublic.lean/declarations/isselfinv-div.md) | 90 | `result-track:4a3a2dc66452ff76f04cdd93b99eb158b2b4a84d92799ebda2f3edbfa8e64d0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19d299b018a06d7688cf8b2b150cb65d369724875c5e14e0d8f82547813c6ad8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SelfInv/Varianta24cfc4d83e8f03c6e263093fc97f5291a0fef5ded5559e8b92b62f9b445a047.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SelfInv/Varianta24cfc4d83e8f03c6e263093fc97f5291a0fef5ded5559e8b92b62f9b445a047.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
