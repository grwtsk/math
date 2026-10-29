# Verification target: Loci

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29a2d4d571d464f9d5c7df0fc3cd426cf85c0c98",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29a2d4d571d464f9d5c7df0fc3cd426cf85c0c98`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.Lattice` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompressedObject](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/compressedobject.md) | 15 | `declaration-track:70e4e45e976ee43c11b02d7222902ae2ca4364b68b95d20139948978a0147731` |
| 2 | `def` | [decode](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/decode.md) | 22 | `declaration-track:03523d917df194cf4bd211cb02fd9098149ff8180be167d616f71e76fb64dabb` |
| 3 | `theorem` | [decode_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/decode-mk-source-edition-2.md) | 25 | `result-track:efa4a4a9d784098b4b52f7326699e2aaf40e4893313fdf41528480b715e03708` |
| 4 | `theorem` | [decode_mk](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/decode-mk.md) | 31 | `result-track:70f2059e4766ffb94c5ea966726a72b477074cea5eeaa774a9de58e7063dddb0` |
| 5 | `inductive` | [LocusKind](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/locuskind.md) | 36 | `declaration-track:3cba00d36115debc154feca76f1624f8dc751d82027828a93e3cf2bfd358adf7` |
| 6 | `structure` | [Locus](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/locus.md) | 50 | `declaration-track:b6c3431c97ea675835dcdb13371f7bd9bbf831e225d9a331fd8dac88b89a4a02` |
| 7 | `structure` | [DecodedLocus](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/decodedlocus.md) | 58 | `declaration-track:526bb65887ee4118baad12bf3d8e4be4b46635ee1c98cde11d6be1f612a9fb3a` |
| 8 | `structure` | [SourceLocus](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/sourcelocus.md) | 62 | `declaration-track:7fb4d87a20a651bc3d0512326379417b86f7ad182dbe07b38041630c40930f25` |
| 9 | `structure` | [SliceLocus](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/slicelocus.md) | 66 | `declaration-track:fe88ba6e3ba3b3eb88e87a1e67df287d2ba8110942e56edc32006c12679d4e32` |
| 10 | `structure` | [MacroLocus](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/macrolocus.md) | 70 | `declaration-track:37556297fd4efea28ebc7504df00719a2750a3bdd97b8bc757b72ef9ce3df111` |
| 11 | `structure` | [ResidueLocus](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/residuelocus.md) | 75 | `declaration-track:9486f3c3b607013becc7026520b645b7d0ddfc803fd0d7633e6cf6d6ee7a0b3f` |
| 12 | `theorem` | [decodedLocus_ext](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/decodedlocus-ext.md) | 81 | `result-track:2fc99aec45db28d316088922b3189c3e48de6f754899862bdfddbfdb089f5443` |
| 13 | `def` | [lookupMacroList?](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/lookupmacrolist.md) | 96 | `declaration-track:1c9a8baeffea6573226f8acc0d360e10ebd9a4e28f610b42a73956818e879fe5` |
| 14 | `def` | [lookupMacro?](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/lookupmacro.md) | 105 | `declaration-track:f59a483d6178fa96b8c4139a962f242310f12832dc3d2a9f027ebac02fb4c8dc` |
| 15 | `inductive` | [MacroLookupResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/macrolookupresidue.md) | 109 | `declaration-track:db9425f0617d641f94f7ea1046e5109bb25229dd20704544a88d74887d91eafe` |
| 16 | `def` | [toResidueLocus](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/toresiduelocus.md) | 115 | `declaration-track:a166cc27020e68283366da601481803c3693099c4b947526640458d37a8a9c99` |
| 17 | `theorem` | [lookupMacroList?_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/lookupmacrolist-sound.md) | 123 | `result-track:5a793ad066118f61cd4d8eafd3216ea88ed6982d0069364d5551cbba4597e43e` |
| 18 | `theorem` | [lookupMacro?_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/lookupmacro-sound.md) | 145 | `result-track:e0fcd0aa000979d16a0ff2a75f8788eb8267d14d9d118dba14ede6d8b2f17933` |
| 19 | `theorem` | [lookupMacro?_none_is_residue](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/lookupmacro-none-is-residue.md) | 151 | `result-track:7619f8611f987af89c7c0b6a508581e6f458da049e048da9f6d36378c946c91f` |
| 20 | `structure` | [PreservesLoci](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/preservesloci.md) | 165 | `declaration-track:78db9ddba543d5bc9d88948ad4139619993971996960c6b87281d99bfa942267` |
| 21 | `def` | [preservesLoci_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/preservesloci-refl.md) | 178 | `declaration-track:c1d758541ebe9cc6bfd5199f0b5bab12d203f13acc63003cdbd67e25329ecba8` |
| 22 | `def` | [preservesLoci_symm](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/preservesloci-symm.md) | 191 | `declaration-track:754b1457ace9e457107b19f936eb5174e8caca0adc6cd344e7f2787d0bc55980` |
| 23 | `def` | [preservesLoci_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/Loci.lean/declarations/preservesloci-trans.md) | 201 | `declaration-track:4552ae767e84cbc8dc750fa606009fe6044cc2cf9bf7d3b32d6dc315054cb068` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c42e01a42f0d3fe19f0c11c7dea4f2a400f648a2e45643f44fd64394a8b2b325 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loci/Variant605b09dba7fe3234e3ac80ed67f3b2bbd4313db4d5b800ff5f4383dd29943732.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
