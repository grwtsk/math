# Verification target: Collect Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1a933039047f16cd104547f56802f70fc4dc8ec",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant8c8502b31fde377dfbdb30325457c41dfdc2b48d46d7e3eb114c96d54f087655.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1a933039047f16cd104547f56802f70fc4dc8ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant8c8502b31fde377dfbdb30325457c41dfdc2b48d46d7e3eb114c96d54f087655.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant8c8502b31fde377dfbdb30325457c41dfdc2b48d46d7e3eb114c96d54f087655.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.toArray.go_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-toarray-go-eq.md) | 25 | `result-track:d9b6ac3ef2432eab64d66333e31abd9b57264373567f073a7467aaaf4662aeeb` |
| 2 | `theorem` | [IterM.toArray.go.aux₁](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-toarray-go-aux.md) | 40 | `result-track:5e6153023b1a61b899434d208a18ba102760329cefc77420e4406d28948bea60` |
| 3 | `theorem` | [IterM.toArray.go.aux₂](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-toarray-go-aux-source-edition-2.md) | 49 | `result-track:da6cbdcdade41f2285d7d001aa1f9f0bfbcf8a1884245b93ac9ee194477b928d` |
| 4 | `theorem` | [IterM.toArray_eq_match_step](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-toarray-eq-match-step.md) | 61 | `result-track:d490536dec95a744bf11f43f9b610a1362b5121a3bf60a905d7c0b3936d64389` |
| 5 | `theorem` | [IterM.toArray_ensureTermination](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-toarray-ensuretermination.md) | 75 | `result-track:e781d0f9b02df5ba7f4f79cf2f4df5f742b0da1def331aa882bddfc305c77ebd` |
| 6 | `theorem` | [IterM.toArray_ensureTermination_eq_match_step](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-toarray-ensuretermination-eq-match-step.md) | 80 | `result-track:7c1c5360b17c156a471ad94227d1bb47cb13598bf09942d3ec2fb39a3f7e8c87` |
| 7 | `theorem` | [IterM.toList_ensureTermination](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolist-ensuretermination.md) | 90 | `result-track:06f71f66aaf2207e2c392841043653a3bf10b269509af159d228f2735ef50467` |
| 8 | `theorem` | [IterM.toList_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolist-toarray.md) | 96 | `result-track:051a63c8216b30cfac13affdf65f6000cae83aa0fbd77147c93078cd91076774` |
| 9 | `theorem` | [IterM.toList_toArray_ensureTermination](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolist-toarray-ensuretermination.md) | 101 | `result-track:9c6bf6261439c8b66538c94ca234b13d20559f44da8095aeeee4a423399e7e78` |
| 10 | `theorem` | [IterM.toArray_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-toarray-tolist.md) | 107 | `result-track:44780d216e5304fcd3c8d2f804486420b33ade28fd09404ef971555360e500bf` |
| 11 | `theorem` | [IterM.toArray_toList_ensureTermination](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-toarray-tolist-ensuretermination.md) | 112 | `result-track:e2b660a8898e17d5f91965c9588dbcb1d39e206c3aa034ab5c003d793c17dff3` |
| 12 | `theorem` | [IterM.toList_eq_match_step](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolist-eq-match-step.md) | 117 | `result-track:fea9b5eaadd53a60485c896a312e596195bf1599338402245ff4c341d9731965` |
| 13 | `theorem` | [IterM.toList_ensureTermination_eq_match_step](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolist-ensuretermination-eq-match-step.md) | 130 | `result-track:48d6af1f0f94fb167d89c807813fcf1129515cef670476876a9a2678e7ee31bd` |
| 14 | `theorem` | [IterM.toListRev_ensureTermination_eq_toListRev](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolistrev-ensuretermination-eq-tolistrev.md) | 140 | `result-track:7b205bda14d8a7686f93e68787982a3cd70102052c06586505afb6c0c95ad49e` |
| 15 | `theorem` | [IterM.toListRev.go_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolistrev-go-eq.md) | 145 | `result-track:25e9a30a801e2991fd32242cc5a7dc0e744fb2cca89e2a4ea85cd11d07d798ea` |
| 16 | `theorem` | [IterM.toListRev.go.aux₁](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolistrev-go-aux.md) | 159 | `result-track:048804c206bae767e6b0be86e5b437065edfb157cc2284cc8c93730385005fdb` |
| 17 | `theorem` | [IterM.toListRev.go.aux₂](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolistrev-go-aux-source-edition-2.md) | 172 | `result-track:d3f44bacc3a19ac1d68321545c9b705b824753fbed95a12a1864b6d0c6469ca9` |
| 18 | `theorem` | [IterM.toListRev_eq_match_step](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolistrev-eq-match-step.md) | 181 | `result-track:54e679a9d6183f3cd76defc82be138618bf78d08945691ab6d2aa984ac169ca9` |
| 19 | `theorem` | [IterM.toListRev_ensureTermination_eq_match_step](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolistrev-ensuretermination-eq-match-step.md) | 194 | `result-track:7c6c75bd937ee0cb551e7cfa0dae4cc0f8bc1dd534fb1ca957f74f8dfa7cb90d` |
| 20 | `theorem` | [IterM.reverse_toListRev](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-reverse-tolistrev.md) | 204 | `result-track:b0c2f656c61e9d81f05005b1fc598ec271048ecd148568836af88a277c6e6527` |
| 21 | `theorem` | [IterM.reverse_toListRev_ensureTermination](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-reverse-tolistrev-ensuretermination.md) | 216 | `result-track:476cdcdaa45dac6d41c3041547f0238f3eda36671c5f46a9c0d2a10403dbe4ba` |
| 22 | `theorem` | [IterM.toListRev_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolistrev-eq.md) | 222 | `result-track:9df9a11ddca24acf8db39287768b3f2ffc22c8a4bc216b4087b0d2322066cfdc` |
| 23 | `theorem` | [IterM.toListRev_ensureTermination](../../../../../ComputerScience/AlgorithmsInComputerScience/CollectPublic.lean/declarations/iterm-tolistrev-ensuretermination.md) | 227 | `result-track:b30b82c4250d530e930c0c01486b6ed98f80173574a8bfc92a6b927f345c37ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81b6ae1a70b487b9fcc7da1a1991624d0a13ad72192755933b73fd97372a8a3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant8c8502b31fde377dfbdb30325457c41dfdc2b48d46d7e3eb114c96d54f087655.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Collect/Variant8c8502b31fde377dfbdb30325457c41dfdc2b48d46d7e3eb114c96d54f087655.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
