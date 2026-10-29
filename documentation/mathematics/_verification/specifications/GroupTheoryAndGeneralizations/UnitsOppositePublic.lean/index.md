# Verification target: Units Opposite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc37d47e8d1ffb05276b0ee0459f3ddd66a8b71c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variant8b99407bc3ddeb9e6dd570a7aa8738deaf3323c7806ce4642c63a97e63115c9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/UnitsOppositePublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/UnitsOppositePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc37d47e8d1ffb05276b0ee0459f3ddd66a8b71c`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variant8b99407bc3ddeb9e6dd570a7aa8738deaf3323c7806ce4642c63a97e63115c9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variant8b99407bc3ddeb9e6dd570a7aa8738deaf3323c7806ce4642c63a97e63115c9a.lean.json)

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
| 1 | `def` | [Units.opEquiv](../../../../GroupTheoryAndGeneralizations/UnitsOppositePublic.lean/declarations/units-opequiv.md) | 26 | `declaration-track:0bf051145bedb2d72100420a4cbef9007ca8add5fe4f43d8b8215791a7a83527` |
| 2 | `theorem` | [Units.coe_unop_opEquiv](../../../../GroupTheoryAndGeneralizations/UnitsOppositePublic.lean/declarations/units-coe-unop-opequiv.md) | 32 | `result-track:5db5559d393f37c1ffa3f402e29b0597c07f0fd24b81f8d2b895b5d89a36c574` |
| 3 | `theorem` | [Units.coe_opEquiv_symm](../../../../GroupTheoryAndGeneralizations/UnitsOppositePublic.lean/declarations/units-coe-opequiv-symm.md) | 37 | `result-track:40ec08770a2773989222db1e2624d608828a664781537cd5d61e25207c198165` |
| 4 | `theorem` | [IsUnit.op](../../../../GroupTheoryAndGeneralizations/UnitsOppositePublic.lean/declarations/isunit-op-source-edition-2.md) | 42 | `result-track:ba920b14791ed2df698edf5b75e63ed028af6f860e3eba9a70e80e5e5602f226` |
| 5 | `theorem` | [IsUnit.unop](../../../../GroupTheoryAndGeneralizations/UnitsOppositePublic.lean/declarations/isunit-unop-source-edition-2.md) | 47 | `result-track:d64d66a42311e7e14c57405019386a453548c11dbcc4c0651b3751f307eb9d1f` |
| 6 | `theorem` | [isUnit_op](../../../../GroupTheoryAndGeneralizations/UnitsOppositePublic.lean/declarations/isunit-op.md) | 52 | `result-track:52c70460ec289abb13732e567aed509aea74f04ba615ae9e835e6e722ef9dc6e` |
| 7 | `theorem` | [isUnit_unop](../../../../GroupTheoryAndGeneralizations/UnitsOppositePublic.lean/declarations/isunit-unop.md) | 56 | `result-track:425c64a6f704380c8cbe9382ad8f573c5e9d48c9afc9ec55deba24f02b5758ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf6f4f6ac50452e696fabf0c98fc8d41b757e7bb9edf4daade66b09f2cae3841 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variant8b99407bc3ddeb9e6dd570a7aa8738deaf3323c7806ce4642c63a97e63115c9a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Opposite/Variant8b99407bc3ddeb9e6dd570a7aa8738deaf3323c7806ce4642c63a97e63115c9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
