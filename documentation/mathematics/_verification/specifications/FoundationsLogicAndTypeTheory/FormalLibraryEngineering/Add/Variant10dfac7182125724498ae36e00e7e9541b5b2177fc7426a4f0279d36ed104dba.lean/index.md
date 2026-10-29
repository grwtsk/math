# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Add.Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4b3e755090b70d15c3a6e304b4abb2ec5ad056f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4b3e755090b70d15c3a6e304b4abb2ec5ad056f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denote_mkFullAdderOut](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/denote-mkfulladderout--66da0ed3a908505c40ad0ddc.md) | 33 | `result-track:66da0ed3a908505c40ad0ddcbfec06cbfa8aadf1ebac8c37beb12b70ce5577f7` |
| 2 | `theorem` | [denote_mkFullAdderCarry](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/denote-mkfulladdercarry--f619b9a32d2e0c174e22f746.md) | 43 | `result-track:f619b9a32d2e0c174e22f746f096e630efd1b1797b86d3a0ac73166dcd64e590` |
| 3 | `theorem` | [mkFullAdder_denote_mem_prefix](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/mkfulladder-denote-mem-prefix--ac594273ee2c0c6f55622dbf.md) | 68 | `result-track:ac594273ee2c0c6f55622dbf4f47319b122667bff5ffec39c5854d62d7cbd3ee` |
| 4 | `theorem` | [go_denote_mem_prefix](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/go-denote-mem-prefix--3c10b1348559b483d6f446b5.md) | 82 | `result-track:3c10b1348559b483d6f446b58ea95de37cc67513c98ca7298d49cc33d8525320` |
| 5 | `theorem` | [go_get_aux](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/go-get-aux--304a4090ecf143c44cf181db.md) | 98 | `result-track:304a4090ecf143c44cf181db59ab4cef88d36e0d5dc1c8e75f30db30320afa11` |
| 6 | `theorem` | [go_get](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/go-get--0e56cd283f567577021127e6.md) | 125 | `result-track:0e56cd283f567577021127e6158f180f90254f16bf65450f098e99ed50b288d9` |
| 7 | `theorem` | [atLeastTwo_eq_halfAdder](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/atleasttwo-eq-halfadder--508672d555cfb03df48c8004.md) | 134 | `result-track:508672d555cfb03df48c80045a137d60307d18242b317b43b451a59b7a8ee9e9` |
| 8 | `theorem` | [go_denote_eq](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/go-denote-eq--5e6026a38dd1c8cc2489e121.md) | 141 | `result-track:5e6026a38dd1c8cc2489e1214b3631a20aa2ba16f85298a2300226c647cb38b5` |
| 9 | `theorem` | [denote_blast](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/denote-blast--eda16dd79f292ddca3580a95.md) | 208 | `result-track:eda16dd79f292ddca3580a95bb7e1624ec95af04f2b985f712592398dea2f3ad` |
| 10 | `theorem` | [denote_blastAdd](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean/declarations/denote-blastadd--a65b91c4a8aca0e97540caa9.md) | 231 | `result-track:a65b91c4a8aca0e97540caa9c9b5db1b40b01970ecfb21e92575b8a496010f1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f546936aa4591c7ad538df8a15ee4e5192bce754bfd81956e9648cde7a6c3f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant10dfac7182125724498ae36e00e7e9541b5b2177fc7426a4f0279d36ed104dba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
