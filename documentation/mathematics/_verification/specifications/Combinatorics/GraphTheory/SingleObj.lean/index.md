# Verification target: Single Obj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ca10de65b9aca081163fc2b417e2035b0556f61",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variantfede87fe349909440880f29b176c78705f572eab113e18545fe986a09deb181d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SingleObj.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SingleObj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ca10de65b9aca081163fc2b417e2035b0556f61`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variantfede87fe349909440880f29b176c78705f572eab113e18545fe986a09deb181d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variantfede87fe349909440880f29b176c78705f572eab113e18545fe986a09deb181d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Cast` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Symmetric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SingleObj](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/singleobj.md) | 28 | `declaration-track:82a670c2cce3cf5c94b99c1743b6aa47f794d04dc1eaf623b21bf2fcd790d16c` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/instance-source-edition-3.md) | 33 | `declaration-track:dc327615417f3a66763aa1f996de61cd66269d0659c7496281cf0993dad836e0` |
| 3 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/instance.md) | 41 | `declaration-track:5116f6df5d25eb2bcede3ddec77ac6e87bf36115f4535d1da946f6010e045374` |
| 4 | `def` | [star](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/star.md) | 45 | `declaration-track:3e596403a2e39849c85cb727cd1b30a355f5ee6473717e4a58dcc1a20dac4915` |
| 5 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/instance-source-edition-2.md) | 48 | `declaration-track:d22791f9a5586172941bbda4e5a85b860274fa244f7f99a1a8762242c7cb5a85` |
| 6 | `lemma` | [ext](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/ext.md) | 53 | `result-track:5110177a7602f7444ff22390ae9ba530a3c279cfcb0263cf4533f8e1ae51e4fc` |
| 7 | `abbrev` | [hasReverse](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/hasreverse.md) | 57 | `declaration-track:f5cbf94d2ff59f054a3cef2df0436ed9d0d2114559ac4f3c750028f5453380db` |
| 8 | `abbrev` | [hasInvolutiveReverse](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/hasinvolutivereverse.md) | 61 | `declaration-track:cb7735984681fd3c3dbd1287cb846decc389916b914d2b38cc951d4cbe9a8ee1` |
| 9 | `def` | [toHom](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/tohom.md) | 68 | `declaration-track:66fdd5530f5ab8a6408eb833e51ec154c5523a43a86a3cfb1214dcb90827da59` |
| 10 | `def` | [toPrefunctor](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/toprefunctor.md) | 75 | `declaration-track:75aeec96945c3ffcfbc43d48625c285713c1efa3eeecfa449c344668cd6a76f4` |
| 11 | `theorem` | [toPrefunctor_id](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/toprefunctor-id.md) | 81 | `result-track:ff09c2cc0053328aca8663478a4591dae5e3a6d200eab2da874f46f80d212929` |
| 12 | `theorem` | [toPrefunctor_symm_id](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/toprefunctor-symm-id.md) | 85 | `result-track:da3bdaa89c4642ba7f79e56d5afb0bf5e6a41db0103586604fadce03f05d6fcf` |
| 13 | `theorem` | [toPrefunctor_comp](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/toprefunctor-comp.md) | 88 | `result-track:465b3820cce6325705eca5fbd4c66b725e5884166c2a15ea76d8971a5f9132a5` |
| 14 | `theorem` | [toPrefunctor_symm_comp](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/toprefunctor-symm-comp.md) | 93 | `result-track:4f417dba9a6a4ec9258915404ebc818506ddc59f2c1f892e6339b08d167f2f52` |
| 15 | `def` | [pathToList](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/pathtolist.md) | 100 | `declaration-track:b742cbd675517235e9b31f441d3314410a30e392471b33920f6d2be77da7799d` |
| 16 | `def` | [listToPath](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/listtopath.md) | 108 | `declaration-track:199c23034dec4ec693fd279360dff8e8d63cd12da49002c9a7ff92b13059956b` |
| 17 | `theorem` | [listToPath_pathToList](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/listtopath-pathtolist.md) | 112 | `result-track:efeae70ea3b6860205a359d6ed2cbce8dc83327344e71b8f2edf40098e4f48e9` |
| 18 | `theorem` | [pathToList_listToPath](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/pathtolist-listtopath.md) | 118 | `result-track:dd0db63039844665781c0a2cd47a6af489029a0853272f76bebc184f59f8de87` |
| 19 | `def` | [pathEquivList](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/pathequivlist.md) | 124 | `declaration-track:7bfee77374e9518e4c2d546ab9d656eba7e4e95d34c224ce8458da6c86ab55bf` |
| 20 | `theorem` | [pathEquivList_nil](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/pathequivlist-nil.md) | 128 | `result-track:08b021659f45186c0c9321300260bac517b50e7de8a1d66b60afe8de1185095e` |
| 21 | `theorem` | [pathEquivList_cons](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/pathequivlist-cons.md) | 132 | `result-track:b365e1f48b631b27bcf14371aff525de1ad66e7ca4981947b7a1e06302cc52d9` |
| 22 | `theorem` | [pathEquivList_symm_nil](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/pathequivlist-symm-nil.md) | 137 | `result-track:397511c2f08eba7b6d4e4bf62c2a2f45c65b12ce9e1bbbd8be5b6b74f2a717ab` |
| 23 | `theorem` | [pathEquivList_symm_cons](../../../../../Combinatorics/GraphTheory/SingleObj.lean/declarations/pathequivlist-symm-cons.md) | 141 | `result-track:10b96b6b5a2ab943dd563e2e000c1133e2e1367eff95ab3717e990359dfd7f58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=345d2c140ccdef17f31c5ea795a38bbdc1a30b8d6c55f3335dd63ffe602f8b14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variantfede87fe349909440880f29b176c78705f572eab113e18545fe986a09deb181d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variantfede87fe349909440880f29b176c78705f572eab113e18545fe986a09deb181d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
