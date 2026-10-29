# Verification target: Functor Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dd33940898e821853749c1f3f066e6b2ec6226d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variant3add3563a8c6cdc948cba2ada28c81440b71736a7b14951f3e5fb6a11d6633ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dd33940898e821853749c1f3f066e6b2ec6226d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variant3add3563a8c6cdc948cba2ada28c81440b71736a7b14951f3e5fb6a11d6633ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Functor/Variant3add3563a8c6cdc948cba2ada28c81440b71736a7b14951f3e5fb6a11d6633ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NAry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Functor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [functor](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/functor.md) | 47 | `declaration-track:aafbef51b2fe44fbd7b24d098d220b94a7c606d0a97a7860bb8e2718b85f401c` |
| 2 | `instance` | [lawfulFunctor](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/lawfulfunctor.md) | 49 | `declaration-track:afb7febc17d4564e3e8c441fe17510bcf07755ace1a2af8bd8469805838818f6` |
| 3 | `theorem` | [fmap_def](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/fmap-def.md) | 55 | `result-track:c6c92217966bbdb73af7d2e8ee380bf33d79da82a4095f0d183d6072f1f73a48` |
| 4 | `instance` | [pure](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/pure.md) | 63 | `declaration-track:70049ef4b3757e849d15441f4663d82c447da536808e46f860c7084542136ebf` |
| 5 | `theorem` | [pure_def](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/pure-def.md) | 67 | `result-track:a5105032c7c3b1b8dbaa6764d15faeced40cc0d0ec80a020b48d2a12317ee40c` |
| 6 | `instance` | [applicative](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/applicative.md) | 77 | `declaration-track:e184b265f72be1c752e2c96f77a1703de0926a906ccef3979b40dc3d81e17177` |
| 7 | `theorem` | [seq_def](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/seq-def.md) | 84 | `result-track:c6d0c120773e4549d7eb5e1eb5320dcfcb15532869deedd00fbf893e3be0f5cd` |
| 8 | `theorem` | [seqLeft_def](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/seqleft-def.md) | 89 | `result-track:c8f40d2e9d58b5f3397809b545bd9e9fc8b3214a72593a7a5c2162dfc91504ad` |
| 9 | `theorem` | [seqRight_def](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/seqright-def.md) | 94 | `result-track:27874af70a237f025f383bb3ffed9329d954a5b5fb6c142c45ec0463da294d7d` |
| 10 | `theorem` | [image₂_def](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/image-def.md) | 100 | `result-track:1f41c693043afb368707b23608872cdec799c5bc78f36addaca14ef377ddcfc5` |
| 11 | `instance` | [lawfulApplicative](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/lawfulapplicative.md) | 106 | `declaration-track:ae2010eff579b841e6c1190ba9e82c8c5452e691daf5f8735008aa3140464cf6` |
| 12 | `instance` | [commApplicative](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/commapplicative.md) | 146 | `declaration-track:ee4b909c584a76aba5b0f39247e3762f08b41e02ca466e1b9d8440e5defccead` |
| 13 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/instance-source-edition-2.md) | 163 | `declaration-track:cacfed93af34c17eb3cdf61f7c584c31b65f99228d336f617f535a388afaaf6d` |
| 14 | `theorem` | [bind_def](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/bind-def.md) | 167 | `result-track:77ad1efb6557ac57f6202d10f5c36319f027ab756703ea131e7438869c0bb57b` |
| 15 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/instance.md) | 171 | `declaration-track:1d01fb84195b02d3fc2cafc117d256dfbd68ed55118cdbbdbb7c5a7f41c1c210` |
| 16 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/instance-source-edition-3.md) | 187 | `declaration-track:df0a03a704aa098c5b5434948df3aa198767b00c313a772ba2c541c43f3d797a` |
| 17 | `def` | [traverse](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/traverse.md) | 203 | `declaration-track:7301ce280b56e84711f9e70ed9d0d574a78e6c384fa9b262f9e38488c3593858` |
| 18 | `theorem` | [id_traverse](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/id-traverse.md) | 208 | `result-track:2903f71ba51565ea5322d90fb247aae81621c67cdca8ec03b380936db709f72b` |
| 19 | `theorem` | [map_comp_coe](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/map-comp-coe.md) | 216 | `result-track:07418c550b91b1af80458ef17962b15f15a5cbabcaa5d38edfc90211cda7c243` |
| 20 | `theorem` | [map_traverse](../../../../../Combinatorics/EnumerativeCombinatorics/FunctorNamespaced.lean/declarations/map-traverse.md) | 221 | `result-track:03e78138bd59d08c307d62fe651704598f05d2fd9be68ecb1bfd63e1b0f73a4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be8e2b1276f31f55ec02edd263d719ec1d0165a324f3a614fb09e50d38f9c341 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Functor/Variant3add3563a8c6cdc948cba2ada28c81440b71736a7b14951f3e5fb6a11d6633ca.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Functor/Variant3add3563a8c6cdc948cba2ada28c81440b71736a7b14951f3e5fb6a11d6633ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
