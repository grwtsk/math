# Verification target: Quiver Path Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a28207cbd71ff7a8c1daad8eee7201d7e7b2968e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0def375cf74c14abb36d07b7a389cea34130e150b5c69821696402dd7e24ccc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a28207cbd71ff7a8c1daad8eee7201d7e7b2968e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0def375cf74c14abb36d07b7a389cea34130e150b5c69821696402dd7e24ccc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0def375cf74c14abb36d07b7a389cea34130e150b5c69821696402dd7e24ccc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/path.md) | 33 | `declaration-track:954cb2e8b9138b258cb5dcf04193af83e58b08455f0b7b885452d51dd7c7e272` |
| 2 | `def` | [Hom.toPath](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/hom-topath.md) | 42 | `declaration-track:89ac489cab272e90e12fda2bf8bd7a8f54be3df4549e8ae0221f056d8cae5c2a` |
| 3 | `lemma` | [nil_ne_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/nil-ne-cons.md) | 50 | `result-track:71b3f441794efd53a0f1c2a1c0154f80203512e8c13c78a2c16e30e3cbfeaecb` |
| 4 | `lemma` | [cons_ne_nil](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/cons-ne-nil.md) | 54 | `result-track:e8391257830fdaaf2c261800773ecff2de11fcadcf5997d6747047b8cd4b889a` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/obj-eq-of-cons-eq-cons.md) | 58 | `result-track:9eaffcca2fcb2e85798fe7d29e658569561205cba82b46fcbc519b8488b5d551` |
| 6 | `lemma` | [heq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/heq-of-cons-eq-cons.md) | 62 | `result-track:4715ec50b0f5af8518cd500525db075d76388a70b6471f72c8c365bcc1c581e9` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/hom-heq-of-cons-eq-cons.md) | 66 | `result-track:bf9911c04622038c67217affd9c6d5278f15394efcc8382c3426a3b40ae59c14` |
| 8 | `def` | [length](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/length.md) | 71 | `declaration-track:9acc370bc8c1912793e12aeca9280a3d8817bbbbbae8c6136490943e383fe38c` |
| 9 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/instance.md) | 76 | `declaration-track:17d21b13c1f7312a6accbd3d27a0b9e615f2b32d56c83e6cc174332082af2765` |
| 10 | `theorem` | [length_nil](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/length-nil.md) | 80 | `result-track:4d2de01e0e5fd43883b4ef93e7eb96f64503799a80ded8c59de2b0bcb1918c3e` |
| 11 | `theorem` | [length_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/length-cons.md) | 85 | `result-track:d4dd4aef72631dbb6db7f1bfb7b4516522b7a19d12b42168362102169adc7adc` |
| 12 | `theorem` | [eq_of_length_zero](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/eq-of-length-zero.md) | 89 | `result-track:8a6781572050af88f98ef4a02ab0d502158582116060f5af4f6af36aca501a2f` |
| 13 | `def` | [comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp.md) | 96 | `declaration-track:3039a6004ae0b83a2e7f15855a902911ce3f5b0817850ef284560ddacfecb3c3` |
| 14 | `theorem` | [comp_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp-cons.md) | 102 | `result-track:01aeade096fe68746fcb61648cb71ce999525d906f2d081f0c4f6e4983b0654c` |
| 15 | `theorem` | [comp_nil](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp-nil.md) | 108 | `result-track:d88eb8ebcb2b8c722ae9917cdd6fbd0809cf3416b4e470692edf0436b940212b` |
| 16 | `theorem` | [nil_comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/nil-comp.md) | 113 | `result-track:43ff550dfe5a3545267a02f2ddc87f900ae6150436e95a799485ea019120e945` |
| 17 | `theorem` | [comp_assoc](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp-assoc.md) | 119 | `result-track:1e7189e169ec797791e42fb6e615a22d23211ee3098e174e3a4b0a794a6feb6e` |
| 18 | `theorem` | [length_comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/length-comp.md) | 126 | `result-track:14cc9c26ed3fb2a10c2a70c3b3b73bfcbe573420d41449d735bb8777f49ad36e` |
| 19 | `theorem` | [comp_inj](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp-inj-source-edition-2.md) | 131 | `result-track:dca6a4403845ac6fb2dec343343ba7ce97c4642e5a48287ba29cde3fb2201bd6` |
| 20 | `theorem` | [comp_inj'](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp-inj.md) | 145 | `result-track:85c1537595e5b99e9efb425a96a8049b56a158860e393d10595589647f52ee0a` |
| 21 | `theorem` | [comp_injective_left](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp-injective-left.md) | 151 | `result-track:97f47bfbb453d80bb14524d9bf4f01a83687250f0d1b7f27c0cffa21642836c8` |
| 22 | `theorem` | [comp_injective_right](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp-injective-right.md) | 155 | `result-track:694c60e988a3d4b8e44a1b0bb7dd6cccaa19b8862652df5bf1dad7c2a48b0951` |
| 23 | `theorem` | [comp_inj_left](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp-inj-left.md) | 160 | `result-track:40854e0d54d590f1186c8792a5da7f20e0b16a2ff8c0c0a61faa8dd9f0d9e9dc` |
| 24 | `theorem` | [comp_inj_right](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/comp-inj-right.md) | 165 | `result-track:f9e106f834125c5e2aea3e34da2edcf50686f312a27ed8232ebfdce46c0cd5eb` |
| 25 | `def` | [toList](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/tolist.md) | 171 | `declaration-track:907ac4bcbe691245e15e1cd81c7f6f3e66cb3009f793fb24ca778743044398d7` |
| 26 | `theorem` | [toList_comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/tolist-comp.md) | 179 | `result-track:94ba7d6f2b22d2af13086b8f0e89d805ebfaa257055831010039de3c9fef77df` |
| 27 | `theorem` | [toList_chain_nonempty](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/tolist-chain-nonempty.md) | 184 | `result-track:00c5c8abdda11ce131fbbd58ebc3f7908d5a05b342c61f4479cfff1a9d17f006` |
| 28 | `theorem` | [toList_injective](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/tolist-injective.md) | 192 | `result-track:f62a08c70ec7243a48322122761b0962d9d881d93f1382d49bee083720bde70a` |
| 29 | `theorem` | [toList_inj](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/tolist-inj.md) | 203 | `result-track:3431ccba23452060428554b841b01747a7f9a2e594ae32507a9dae397d4c7648` |
| 30 | `def` | [mapPath](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/mappath.md) | 218 | `declaration-track:3cc1a19928f9fb35ab2b4c7609b18273f323d43e98a1d852ca945e3db3421875` |
| 31 | `theorem` | [mapPath_nil](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/mappath-nil.md) | 224 | `result-track:b69642a2d0f0fa3ea06ec4b22e4858938e4d1dea0b3a3f19a3832052e908f4c9` |
| 32 | `theorem` | [mapPath_cons](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/mappath-cons.md) | 229 | `result-track:6df3dccadf294f35f641aefe7d22a83d917b54ca4e2bd14d149216aa2e400356` |
| 33 | `theorem` | [mapPath_comp](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/mappath-comp.md) | 235 | `result-track:ba008a9f7d59e93b44cd25676de43356a6ebd7d3d114c8709196aad378ff39df` |
| 34 | `theorem` | [mapPath_toPath](../../../../../Combinatorics/GraphTheory/QuiverPathNamespaced.lean/declarations/mappath-topath.md) | 242 | `result-track:c5925d8c9559c79d494a91f97ba4adc47348506f7892c3297b44e30e1042eb8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67d55b6574187537c095444591615a09077a24967c3e0d9d448721c3b1182e3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0def375cf74c14abb36d07b7a389cea34130e150b5c69821696402dd7e24ccc3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0def375cf74c14abb36d07b7a389cea34130e150b5c69821696402dd7e24ccc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
