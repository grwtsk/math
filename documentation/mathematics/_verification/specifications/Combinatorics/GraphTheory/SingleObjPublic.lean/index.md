# Verification target: Single Obj Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b94281480cd784047865566f728ef6d06ca6914",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variant7c5828609db793430aa533cdeb3a971501a1a901b60efafd8ca43f0d83b62c70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b94281480cd784047865566f728ef6d06ca6914`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variant7c5828609db793430aa533cdeb3a971501a1a901b60efafd8ca43f0d83b62c70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variant7c5828609db793430aa533cdeb3a971501a1a901b60efafd8ca43f0d83b62c70.lean.json)

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
| 1 | `def` | [SingleObj](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/singleobj.md) | 32 | `declaration-track:432d94f78c201670e3130ce2d7e086c09763939b68dd436836cd4b55e1178a86` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/instance.md) | 40 | `declaration-track:ab0cc72b81d11e6a3ad949910bd114d5441e3353fd5ea7870827710478d8de24` |
| 3 | `def` | [star](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/star.md) | 44 | `declaration-track:64a1604f88cd8620a40841ff796f5ade4418c36d158d244815a2ff016217002a` |
| 4 | `lemma` | [ext](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/ext.md) | 48 | `result-track:73e3bbeb90ff82987d9f5852ade8f7ef2b69dd534261a8feec3a1b45291c5723` |
| 5 | `abbrev` | [hasReverse](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/hasreverse.md) | 52 | `declaration-track:eca7e9dada98862d11e4f064ccc0b10d995e4c522409927b4a289af53c79d3d7` |
| 6 | `abbrev` | [hasInvolutiveReverse](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/hasinvolutivereverse.md) | 56 | `declaration-track:e87a46ea2e8840f7dab8c410f638a481b0fdcf0e85e8bb67a10a2c5f3a9e8973` |
| 7 | `def` | [toHom](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/tohom.md) | 63 | `declaration-track:6a67d86f64a4a268042381421f1577a7199934cc0f5bcddad0a5a84513cd5029` |
| 8 | `def` | [toPrefunctor](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/toprefunctor.md) | 70 | `declaration-track:fa4b5c67218495780b50bb261ece66b67e9eecd06f18363ac73fc2881c0fa452` |
| 9 | `theorem` | [toPrefunctor_id](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/toprefunctor-id.md) | 74 | `result-track:29701ee95924010ffcc96c04833b0792fa085907736c66589fa6e11322ff1632` |
| 10 | `theorem` | [toPrefunctor_symm_id](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/toprefunctor-symm-id.md) | 78 | `result-track:9d5388b2d847cf2a53fa802737f4be5adcee3f12fe217602190773d4e583c0b6` |
| 11 | `theorem` | [toPrefunctor_comp](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/toprefunctor-comp.md) | 81 | `result-track:692ce87cde460a96dcc8ddc22aee426dbbab64df9f1a7b269cae3832be2512a0` |
| 12 | `theorem` | [toPrefunctor_symm_comp](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/toprefunctor-symm-comp.md) | 86 | `result-track:8f3e9587bdd71c22015de2050cc01af6c18b9a927b408222afeed40f1b46c54d` |
| 13 | `def` | [pathToList](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/pathtolist.md) | 93 | `declaration-track:a2a9a27bafb760186608aebd97e625fbfeec3d874f654c953421ff20430b5bd5` |
| 14 | `def` | [listToPath](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/listtopath.md) | 101 | `declaration-track:1207c7ab6db197907befa9c965338fdf3f1fe452635d591edbc6382fcb3c4df4` |
| 15 | `theorem` | [listToPath_pathToList](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/listtopath-pathtolist.md) | 105 | `result-track:4af41add2259cb52e2734f07f32fd17bbab95a0363b0836dcae4595e636bdb45` |
| 16 | `theorem` | [pathToList_listToPath](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/pathtolist-listtopath.md) | 111 | `result-track:ffc2039cde5a91d7126766d2729f5a14812cbea7a843f7a31dd408b64f9b3958` |
| 17 | `def` | [pathEquivList](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/pathequivlist.md) | 117 | `declaration-track:7c2b7bf8b6140ad9667d86d342a4c84dc698dde07a6f1d7e6abc4a48502b65db` |
| 18 | `theorem` | [pathEquivList_nil](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/pathequivlist-nil.md) | 121 | `result-track:50ee46c11d3b1522477b5cd6ea7932f94e1a38d4b0a27caa1b309406497dce74` |
| 19 | `theorem` | [pathEquivList_cons](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/pathequivlist-cons.md) | 125 | `result-track:9ed763c66115751be3b1760b4c4caf5f13f12d7f82fd3723d11de1b3b9cd0815` |
| 20 | `theorem` | [pathEquivList_symm_nil](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/pathequivlist-symm-nil.md) | 130 | `result-track:3b07ca8d0787f1f7f66360b21db7aa2d3fc39034b3098093da1ac5c33c4a40bc` |
| 21 | `theorem` | [pathEquivList_symm_cons](../../../../../Combinatorics/GraphTheory/SingleObjPublic.lean/declarations/pathequivlist-symm-cons.md) | 134 | `result-track:35ee5f1223aac95addc412ec4ad7cfb89ca4f4f27f5f9392f596012093565016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82d02d6a1ef5cde33225e9e3cbfeb90363a4dde4d0f1c962a8a73a96f4bb1e2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variant7c5828609db793430aa533cdeb3a971501a1a901b60efafd8ca43f0d83b62c70.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/SingleObj/Variant7c5828609db793430aa533cdeb3a971501a1a901b60efafd8ca43f0d83b62c70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
