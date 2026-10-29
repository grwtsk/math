# Verification target: Requests

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de8ea38d18fedacb046ad732c069980c6e0841db",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant5f1f63888687d0eb98c129edc3b9ae02cd15837e0d2edc7a5e905f8be5132344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de8ea38d18fedacb046ad732c069980c6e0841db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant5f1f63888687d0eb98c129edc3b9ae02cd15837e0d2edc7a5e905f8be5132344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant5f1f63888687d0eb98c129edc3b9ae02cd15837e0d2edc7a5e905f8be5132344.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.Json.Parser` — import line 6; external provider; requires a separately pinned dependency.
- `Cache.Hashing` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [URL](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/url.md) | 14 | `declaration-track:250bd7ffb1b86bc029af8c685f615a489f1db077a6544f95b51e89260ca36467` |
| 2 | `def` | [mkFileURL](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/mkfileurl.md) | 24 | `declaration-track:abe81b1561cf1159cb56339bfdc4707bcf1de7cb8eac48a74fd11cfc91ff4ee5` |
| 3 | `def` | [mkGetConfigContent](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/mkgetconfigcontent.md) | 32 | `declaration-track:6f17dc7495997a5c70cffe3c6d3fae4509e37fb993d1026873eba5d66a73bd4b` |
| 4 | `def` | [downloadFile](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/downloadfile.md) | 51 | `declaration-track:a5cd53462a57cb6381cbe032610c7d5b57ef7f176e240e487c1e5663f9726bae` |
| 5 | `def` | [downloadFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/downloadfiles.md) | 64 | `declaration-track:cd4fd9dc8446aaed1e98d6ee64a4b59b40b6ea3728798ff98aa97839852c355d` |
| 6 | `def` | [getFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/getfiles.md) | 123 | `declaration-track:a76b989cdb5381ba8a75b44a11d8cf808976185e5bad65d83aafaab86e00bc82` |
| 7 | `def` | [mkPutConfigContent](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/mkputconfigcontent.md) | 134 | `declaration-track:a029cc8667bdd07416afe0d0ac706a4c8dbc7470c66bbb3157116fa6dbfd489b` |
| 8 | `def` | [putFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/putfiles.md) | 140 | `declaration-track:d488b75dbccb8422600a19537897f00e98c9c1ec64b055d50d2a0bc1ae504020` |
| 9 | `def` | [isGitStatusClean](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/isgitstatusclean.md) | 158 | `declaration-track:51af91b2db1cccf0caf6919f2d8eff06ed76fb75239c515d12084897ff55bfe4` |
| 10 | `def` | [getGitCommitHash](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/getgitcommithash.md) | 161 | `declaration-track:08b4bf97b259b4da53b5951d6f151f7ed0fcb50cc1c2aa23508beffcfec2c0d7` |
| 11 | `def` | [commit](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/commit.md) | 172 | `declaration-track:b1be7a72a835826b714f555021f30aad035375e4ac61c5922986050cd1271244` |
| 12 | `inductive` | [QueryType](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/querytype.md) | 187 | `declaration-track:49becd2d20f71555845590f5888e07cbafd3a92c78385f009a1075b756e5b44e` |
| 13 | `def` | [QueryType.prefix](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/querytype-prefix.md) | 190 | `declaration-track:1b6d5a7dda40a20619b4b08f784921f75f2ce899aace997a6f8e46154f896974` |
| 14 | `def` | [formatError](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/formaterror.md) | 195 | `declaration-track:18689a8103fc5e576683903fe0871975ce1810bc36928bcce8b7a72605fb724a` |
| 15 | `def` | [QueryType.desc](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/querytype-desc.md) | 198 | `declaration-track:c46b25865f316442e8be0606c891a7bfe2869c60f55b81a0126c170b974ae340` |
| 16 | `def` | [getFilesInfo](../../../../../ComputerScience/AlgorithmsInComputerScience/Requests.lean/declarations/getfilesinfo.md) | 208 | `declaration-track:6c7188f2f4c19e64db2f270a405e53699cad14cd32dbf407652b90888d17dd53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5341a870d78c6d2a7491b60f5d5ffec091640a25ed4d3a1746526b744fefa4a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant5f1f63888687d0eb98c129edc3b9ae02cd15837e0d2edc7a5e905f8be5132344.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant5f1f63888687d0eb98c129edc3b9ae02cd15837e0d2edc7a5e905f8be5132344.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
