# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GlobalReference.Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cc5a05cca9ed749d04c081059d324bc3a0f146c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cc5a05cca9ed749d04c081059d324bc3a0f146c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [KnownMaximalState](../../../../../CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean/declarations/knownmaximalstate--edb79637c4b8d37180d24744.md) | 18 | `declaration-track:edb79637c4b8d37180d2474464a83ccf4a27e749b5a24e76a5792e8d96af3ff0` |
| 2 | `theorem` | [card_coord](../../../../../CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean/declarations/card-coord--ea3623105203fa9ecad0c62c.md) | 31 | `result-track:ea3623105203fa9ecad0c62c13b7db6149f00cc4be27039f7fa569fba8c8abe1` |
| 3 | `theorem` | [absoluteIndex_injective](../../../../../CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean/declarations/absoluteindex-injective--3346ad7af392662fb2f0cf4f.md) | 37 | `result-track:3346ad7af392662fb2f0cf4fd98ce8966af74d62474caeba5af1cb3990fd1afc` |
| 4 | `theorem` | [absoluteIndex_surjective](../../../../../CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean/declarations/absoluteindex-surjective--f537f32e6164b166a4206555.md) | 41 | `result-track:f537f32e6164b166a4206555318a09fa267de205ccd106aed1e716b1e8e7c0cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f1eff723e0e961b4ef80b3d91b99a9ecbeca1f46da23b54d78507189a033bf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GlobalReference/Variant4dbbfa0873f7489a8c466f61a3e5203e944e1997f2b244b268c823ec88e59b8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
