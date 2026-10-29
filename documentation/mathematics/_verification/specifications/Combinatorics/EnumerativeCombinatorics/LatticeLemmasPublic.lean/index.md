# Verification target: Lattice Lemmas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad83082b2a6b8b53340c6ead1f53393e3fb65e0a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb5f97563650e818e1c5e50b6c1f26a13e00e60990920db0c6709aa4e6f89b9bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad83082b2a6b8b53340c6ead1f53393e3fb65e0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb5f97563650e818e1c5e50b6c1f26a13e00e60990920db0c6709aa4e6f89b9bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb5f97563650e818e1c5e50b6c1f26a13e00e60990920db0c6709aa4e6f89b9bd.lean.json)

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
| 1 | `theorem` | [disjoint_iff_inter_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/disjoint-iff-inter-eq-empty.md) | 45 | `result-track:7e34fe2315147372d5c17f3619c69863419571df295e04bf47933356ddebf6fd` |
| 2 | `theorem` | [union_empty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/union-empty.md) | 51 | `result-track:fe47e549dbb74020ab19c241bec5efed68ae9514ec6da6513ed749fb1a01cf2d` |
| 3 | `theorem` | [empty_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/empty-union.md) | 55 | `result-track:eea73c29ebf5ccf464621c41d67073967a387294a2454c9bc290bba518351aa5` |
| 4 | `theorem` | [Nonempty.inl](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/nonempty-inl.md) | 59 | `result-track:a438791b6ab6b7f5e53944ac029bf7b098e457ceb16a242c1920512f973b0a73` |
| 5 | `theorem` | [Nonempty.inr](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/nonempty-inr.md) | 63 | `result-track:40668993ffe9b2689728a9f931d8ea079be1ac705d5c22144eae374b02adfb35` |
| 6 | `theorem` | [insert_eq](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/insert-eq.md) | 66 | `result-track:38bf7a823f2e4f1584ce00d7e33b8b487965ada8bf105db4445338dd536e0da3` |
| 7 | `lemma` | [singleton_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/singleton-union.md) | 70 | `result-track:fe13993ea07dbe7165a728dc41bd0e5c82f5ea8d9b938109fddf88b17eaeb919` |
| 8 | `lemma` | [union_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/union-singleton.md) | 77 | `result-track:050908095f4a1780094d7bfc688bb2379cedc328237665e8fa18c616d0860da7` |
| 9 | `theorem` | [insert_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/insert-union.md) | 81 | `result-track:fd45ce66599688ae177ece4be42d3bd8ac5fa7ed795bd4185a3d69e1cdeb0afd` |
| 10 | `theorem` | [union_insert](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/union-insert.md) | 85 | `result-track:6e54247100c454de3f7aed681c2af2fa46b7ffaf8de0f18c426b2d038eae79e0` |
| 11 | `theorem` | [insert_union_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/insert-union-distrib.md) | 88 | `result-track:a5d36b924412ace5f24e5f2be9c565f001dbf8e256c7403d5bdddeb44692bcd5` |
| 12 | `theorem` | [induction_on_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/induction-on-union.md) | 98 | `result-track:a7d4d855e08a842ca09dc5e6f6bbc26d92c3ddb47dfc047a992b89d3ff40bbd7` |
| 13 | `theorem` | [inter_empty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/inter-empty.md) | 112 | `result-track:8c79823eeb006854a033066bf2aa96cf2620ad5322e2b3d61b7f64830471ad04` |
| 14 | `theorem` | [empty_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/empty-inter.md) | 116 | `result-track:53cb75aeb227f281fac570f085f74f0f551a77ab26f3a40e2e090cdd79f2fadb` |
| 15 | `theorem` | [insert_inter_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/insert-inter-of-mem.md) | 120 | `result-track:554ea312ddaccb44fb5bcb5b69361bde2502c32a4105277eba8a574450acfd69` |
| 16 | `theorem` | [inter_insert_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/inter-insert-of-mem.md) | 127 | `result-track:f261be4ac3f745c2f8cf3bcb17235e10ab12d41c3f72bf27d1f7ce970383a6ba` |
| 17 | `theorem` | [insert_inter_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/insert-inter-of-notmem.md) | 131 | `result-track:49fc70f1faf08645c7f6768cb0c4cedbfb9ec8d1b7f56a154543df09a40207a6` |
| 18 | `theorem` | [inter_insert_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/inter-insert-of-notmem.md) | 138 | `result-track:84c7c2518895384ccbe3d0226375b59a3378b0ab7b9963789c4feb6ea0a78862` |
| 19 | `theorem` | [inter_insert](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/inter-insert.md) | 142 | `result-track:c86c02f88484d48337d8c4d5e48eecba68bed47424da2a00d9b1b2e17a4826e7` |
| 20 | `theorem` | [insert_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/insert-inter.md) | 147 | `result-track:106eaa8c8c4e983c7e18e3ec6be1bc4cb431f3f35e4b52cb00ad281a75e92008` |
| 21 | `theorem` | [singleton_inter_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/singleton-inter-of-mem.md) | 152 | `result-track:7fc39c143aa7759048ead3d054afb248dfc488942d57d76619c7a7aef525b952` |
| 22 | `theorem` | [singleton_inter_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/singleton-inter-of-notmem.md) | 156 | `result-track:4b0e15f6f623197ab5678b701bb5cb1ef2db2cc88a506739c4c3d93a842254b3` |
| 23 | `lemma` | [singleton_inter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/singleton-inter.md) | 161 | `result-track:37cdc311dc74db463b43aea419657c794ba138efb71883bfba80a8a71f3c4d54` |
| 24 | `theorem` | [inter_singleton_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/inter-singleton-of-mem.md) | 166 | `result-track:99473d347ec462f82bc7e3e00e3e2eb238a59637f2fbfe3816e9accf0305133e` |
| 25 | `theorem` | [inter_singleton_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/inter-singleton-of-notmem.md) | 170 | `result-track:7585d571d6a0c721283cf24df50488a11ca68d6283d59e5c0c54304ef7a2c9ed` |
| 26 | `lemma` | [inter_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/inter-singleton.md) | 173 | `result-track:499c388956aa793534da63ee8d51d590e5835c8db10bb56e7dbab4cef3aab958` |
| 27 | `lemma` | [union_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/union-eq-empty.md) | 177 | `result-track:1b06aef7dfced62bedf7edc17312b862a7d79bc018e9c23f604f5e7a27f75fc7` |
| 28 | `lemma` | [union_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/union-nonempty.md) | 178 | `result-track:65b0ab66d371cc1f6988b5dce6d7c451fabca8d8ba4166f9748875d3651178c4` |
| 29 | `theorem` | [insert_union_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/insert-union-comm.md) | 181 | `result-track:86a3f67de1c1371cfde85ee6886a976ae22c623376d3681f96d26d001dfc84b3` |
| 30 | `theorem` | [toFinset_append](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeLemmasPublic.lean/declarations/tofinset-append.md) | 193 | `result-track:cd008dc245ca8d031f60b14a1cb4c00c080fd37dc461e24960631ca0ff211e24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86ead1e593f00af724697bd5f9f68175e1f9fe0bcc31bb92c19deba4fe9910a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb5f97563650e818e1c5e50b6c1f26a13e00e60990920db0c6709aa4e6f89b9bd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lemmas/Variantb5f97563650e818e1c5e50b6c1f26a13e00e60990920db0c6709aa4e6f89b9bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
