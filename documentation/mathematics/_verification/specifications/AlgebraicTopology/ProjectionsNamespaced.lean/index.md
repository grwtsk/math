# Verification target: Projections Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6323412a1b08352d4d3e263cee5e37b158426a16",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variantc05fff2793c458e8a2294aaf7d36e55e4e4c7397fa6aff04e1e3f33f6fbd10aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/index.md) · [Full source](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6323412a1b08352d4d3e263cee5e37b158426a16`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variantc05fff2793c458e8a2294aaf7d36e55e4e4c7397fa6aff04e1e3f33f6fbd10aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variantc05fff2793c458e8a2294aaf7d36e55e4e4c7397fa6aff04e1e3f33f6fbd10aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.Faces` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [P](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/p.md) | 54 | `declaration-track:45a90fb3c96163b85ec64f4a4033d1a4fb62a86d9af3f0a70a99670e92c312ee` |
| 2 | `lemma` | [P_zero](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/p-zero.md) | 58 | `result-track:c0ae8484aaaab6b6bb8b4e08ffb5b8d337b2101486aac0ac9c4d6a0ff20c85b5` |
| 3 | `lemma` | [P_succ](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/p-succ.md) | 59 | `result-track:0260ce485c3ee700afb9d7e6233d37272d48c6b7b678c61de1ef38114c40c6fa` |
| 4 | `theorem` | [P_f_0_eq](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/p-f-0-eq.md) | 63 | `result-track:5cd9fa6369b1ec48907d7a6b0aa27684c1e12d717401397646fea3c4bb9df977` |
| 5 | `def` | [Q](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/q.md) | 70 | `declaration-track:06623dbd03d8cccc7ee898cf145bab099517d10ab0ec2827a246177591cae755` |
| 6 | `theorem` | [P_add_Q](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/p-add-q.md) | 73 | `result-track:a353da8a2596b4c32b0e1b6b2385c364f14c4cc61ca5b01bd2b100f298ae1ce6` |
| 7 | `theorem` | [P_add_Q_f](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/p-add-q-f.md) | 77 | `result-track:eecda19cacbb0448ffcc2faefcb0766811c1dada7894b361d20de0b7d1763978` |
| 8 | `theorem` | [Q_zero](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/q-zero.md) | 81 | `result-track:9303ab5ebb0a4854d54ae41c7354e0c8ba423e065872aba0e778916beff580c1` |
| 9 | `theorem` | [Q_succ](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/q-succ.md) | 84 | `result-track:bcd5bedd4b6103532c0bb597aaf9ee52d773c636d18daf48b97abd59784605fa` |
| 10 | `theorem` | [Q_f_0_eq](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/q-f-0-eq.md) | 90 | `result-track:14b7560656fb4e9259313aa946edd9a35ac016a1726162740dde53a383df9268` |
| 11 | `theorem` | [of_P](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/of-p.md) | 97 | `result-track:12015f85530e0d91f524aedcf020453f808d37713862d8060c17a035ffb68a08` |
| 12 | `theorem` | [comp_P_eq_self](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/comp-p-eq-self.md) | 104 | `result-track:fe4d3dbe147f3e1d2dab2b56013eda4554da1d960d3b53ba63849d34afeeb735` |
| 13 | `theorem` | [comp_P_eq_self_iff](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/comp-p-eq-self-iff.md) | 124 | `result-track:7061c4b7f4557c4090e6169a18e919e5950ad7bf70490ae45d4f3848e70cd4bf` |
| 14 | `theorem` | [P_f_idem](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/p-f-idem.md) | 134 | `result-track:fff195f90113dc4affae226f6600b767b29f596b231b41725150eca9f2038e5d` |
| 15 | `theorem` | [Q_f_idem](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/q-f-idem.md) | 140 | `result-track:dc466ea3cc34f2a1a749fbf53b58ec14f8d9852541b02e80dc091506cbe93ac3` |
| 16 | `theorem` | [P_idem](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/p-idem.md) | 144 | `result-track:bdc2090b47ccb930a6a60d24ee438a74a54f38f900cbd1f1e85f988059029ebf` |
| 17 | `theorem` | [Q_idem](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/q-idem.md) | 149 | `result-track:8d17c6e529bcd72fdeadd571ad173c6c03d25f6bba5a7990906b0086d383b2d9` |
| 18 | `def` | [natTransP](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/nattransp.md) | 155 | `declaration-track:a4744cd65be85d789983980bddcc17556091a68df86d58a315e0b972ca5052ac` |
| 19 | `theorem` | [P_f_naturality](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/p-f-naturality.md) | 167 | `result-track:e2834fb60b70af82841a2d9c81d552d74e9ee6c6ff1be80fa7703b078b12becb` |
| 20 | `theorem` | [Q_f_naturality](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/q-f-naturality.md) | 172 | `result-track:e62fb25f7a6ef900034236dd9157283d2953c98243a5c8526e2716aa5cf48b84` |
| 21 | `def` | [natTransQ](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/nattransq.md) | 181 | `declaration-track:568a2079d7ce8cde08102526c600dfc1019593646c9fe4c5d6f882b46ab6131b` |
| 22 | `theorem` | [map_P](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/map-p.md) | 184 | `result-track:4f53849436425eac0beffccba706e44bd7888f0e6f0092834df9075bd404b137` |
| 23 | `theorem` | [map_Q](../../../../AlgebraicTopology/ProjectionsNamespaced.lean/declarations/map-q.md) | 193 | `result-track:22a5b814837289507cdd18498a56e9353f58680bd11c2293b24536952ca1c26e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f706b6aad2aef07ea4a16a049509821d7468786e7eb698285459184821c25153 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variantc05fff2793c458e8a2294aaf7d36e55e4e4c7397fa6aff04e1e3f33f6fbd10aa.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Projections/Variantc05fff2793c458e8a2294aaf7d36e55e4e4c7397fa6aff04e1e3f33f6fbd10aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
