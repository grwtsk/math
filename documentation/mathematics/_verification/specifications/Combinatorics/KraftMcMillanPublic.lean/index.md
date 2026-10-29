# Verification target: Kraft Mc Millan Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c005ff7070f8b06ded36f1c228e46ce7b43698f2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/KraftMcMillanPublic.lean/index.md) · [Full source](../../../../Combinatorics/KraftMcMillanPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c005ff7070f8b06ded36f1c228e46ce7b43698f2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Normed` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [concatFn](../../../../Combinatorics/KraftMcMillanPublic.lean/declarations/concatfn.md) | 48 | `declaration-track:9146e8bbfb697d9e90d388e322e9f5df67ef9d0b1013fdc442eb5d02ada3ff2e` |
| 2 | `lemma` | [concatFn_length](../../../../Combinatorics/KraftMcMillanPublic.lean/declarations/concatfn-length.md) | 51 | `result-track:d2d6ddf88799c8375e48e7a43495bce84858ecfc832d7bf39570fa6d2009291f` |
| 3 | `lemma` | [concatFn_injective_of_isUniquelyDecodable](../../../../Combinatorics/KraftMcMillanPublic.lean/declarations/concatfn-injective-of-isuniquelydecodable.md) | 60 | `result-track:b7240d3cf7833f9593a1e689c2d417ac14ff32af56d70ab9079021c56241882f` |
| 4 | `lemma` | [sum_pow_length_filter_eq_le_card_mul](../../../../Combinatorics/KraftMcMillanPublic.lean/declarations/sum-pow-length-filter-eq-le-card-mul.md) | 68 | `result-track:623ef47fce9e9eb5c3b84f0b28ec7e256dc5384f5c12e5752e68e4f89d72ef05` |
| 5 | `lemma` | [concatFn_length_mem_Icc](../../../../Combinatorics/KraftMcMillanPublic.lean/declarations/concatfn-length-mem-icc.md) | 81 | `result-track:39fe47883a710127d2e31f6030d49b53e6e39c75b7f7970d45bc3601b9838037` |
| 6 | `lemma` | [kraft_mcmillan_inequality_aux](../../../../Combinatorics/KraftMcMillanPublic.lean/declarations/kraft-mcmillan-inequality-aux.md) | 99 | `result-track:f3087470ee6c5829f57a325ee7371bc68b5169e954e1c63be329975ecc29ef84` |
| 7 | `theorem` | [IsUniquelyDecodable.finsetSum_one_div_card_pow_length_le_one](../../../../Combinatorics/KraftMcMillanPublic.lean/declarations/isuniquelydecodable-finsetsum-one-div-card-pow-length-le-one.md) | 145 | `result-track:1d3c0271f196508dfa335238612907f2c977788d045e2b88189719c5766cf2ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13fbf4cf6f71c5ec43b586ce58666d45cad48a6e2abd5beec6e2a4427d52866b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/KraftMcMillan/Variant8c40cdd916218c74549efae2377eb03f19d1d485ab75fcd014a74b19c953634e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
