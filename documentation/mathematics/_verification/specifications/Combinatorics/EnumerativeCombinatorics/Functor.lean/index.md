# Verification target: Functor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "281c0385f291bb5357a6e8d20dfdb8db74fa04fc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `281c0385f291bb5357a6e8d20dfdb8db74fa04fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NAry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Functor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functor](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/functor.md) | 39 | `declaration-track:270f877156e7d552924cd6f58b562f592acdca55b7b8f880c791adafcc4a8300` |
| 2 | `instance` | [lawfulFunctor](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/lawfulfunctor.md) | 41 | `declaration-track:8a997ba10522622a3e17ea17792ef57fc632e1c7469a70d417450b9fafc30eb3` |
| 3 | `theorem` | [fmap_def](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/fmap-def.md) | 47 | `result-track:5575ec961354303e5f31ff3968d88bef18583821589430e3945406417cc024b3` |
| 4 | `instance` | [pure](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/pure.md) | 55 | `declaration-track:5b45c6a69bb55b791f2a3cae59672dafe1572c10ec784c0af9ef7c2119b3e8ad` |
| 5 | `theorem` | [pure_def](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/pure-def.md) | 59 | `result-track:b3f3766443a7b8c87957685a7ed0a06015ca4f5c323870a72303811c13075eee` |
| 6 | `instance` | [applicative](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/applicative.md) | 69 | `declaration-track:f9d648bf2f1b207675b6fe8da4f5f082d8e98206178eb4dc262f7a80fc5048bc` |
| 7 | `theorem` | [seq_def](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/seq-def.md) | 76 | `result-track:a7cb3ad1d3b0f4e97955f1129e968ca8303bf96df90a01d34f20b152223a94a9` |
| 8 | `theorem` | [seqLeft_def](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/seqleft-def.md) | 81 | `result-track:515cf86174e8043910ac1e9a59c0200f7fd03fc170cb926cc18b8a16c70e0c97` |
| 9 | `theorem` | [seqRight_def](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/seqright-def.md) | 86 | `result-track:7c7d31a8a5e6ca6824b4ec42e3f041131dff4142e4bf060c4ac092d81042a2a3` |
| 10 | `theorem` | [image₂_def](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/image-def.md) | 92 | `result-track:ce083193c81c9b6eea1130542f43916522301dd80feb3030c0435562574ffadb` |
| 11 | `instance` | [lawfulApplicative](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/lawfulapplicative.md) | 98 | `declaration-track:a07ae7249afaf1661ef80c50003e719d25de5883777f22d7e881c14d740b353f` |
| 12 | `instance` | [commApplicative](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/commapplicative.md) | 138 | `declaration-track:ef5a2903ee0859c8e45b33c107635b1bf1429ae59dba51b5ac05354db442b24e` |
| 13 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/instance-source-edition-2.md) | 155 | `declaration-track:e4d354fe942de351b7862afeccda38e3727bb21cfdef27b297d69a1b0dd68003` |
| 14 | `theorem` | [bind_def](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/bind-def.md) | 159 | `result-track:f04741fef34e16c13b7c425e3a7c6f584a672aa726578e568e7db8721fb587f8` |
| 15 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/instance-source-edition-3.md) | 163 | `declaration-track:e8d7d1c749a6ea4ea003bfbe6152080cab9a0efc4e9400cf17b156d5f2a5f1c8` |
| 16 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/instance.md) | 179 | `declaration-track:6dce0fcf663d5114e037f48aae398fca630ae2d5f07eea80036bcc68cf00d6f8` |
| 17 | `def` | [traverse](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/traverse.md) | 195 | `declaration-track:6ed1977f9d1f5eb7398803a6897034ce4e9ace4ae5acce0b5ed88c0f36fb3d4c` |
| 18 | `theorem` | [id_traverse](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/id-traverse.md) | 200 | `result-track:85b5dcdc7454216daa8ebbc8c6ea79d5bccee8b09a0e57c64525bae0b33bae29` |
| 19 | `theorem` | [map_comp_coe](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/map-comp-coe.md) | 208 | `result-track:64c3b7cf78cb3c43442db81dea3c1fb1f0a02217cae1f268e37696ce21294524` |
| 20 | `theorem` | [map_traverse](../../../../../Combinatorics/EnumerativeCombinatorics/Functor.lean/declarations/map-traverse.md) | 213 | `result-track:98471aad24f8fa4e9ec87595d835bf1abc698f4992c7da07df0dcc11c5dc7579` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13146e5f10c7d827d313cc6c11d0344930ace7191797f313389e83e081725df7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Functor/Variante8507b3f93efe7d57845a9034950af0c38b4809150aa7bf3fa1c960c1cf5ac82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
