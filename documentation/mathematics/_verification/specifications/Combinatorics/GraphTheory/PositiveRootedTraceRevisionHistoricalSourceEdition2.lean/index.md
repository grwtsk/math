# Verification target: GRWTSK.Combinatorics.DirectedGraph.Checks.Positive.RootedTraceRevision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afd41cfe12d15bedfdcbc44e2b0069aedf2378a7",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afd41cfe12d15bedfdcbc44e2b0069aedf2378a7`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.RootedTraceRevision`](../../../../../Combinatorics/GraphTheory/DirectedGraphRootedTraceRevisionHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/loopvertexdecidableeq.md) | 15 | `declaration-track:abfe60eed6b6386eba9d6d238421d7801af08ac85f489802132a8300ef5d06fd` |
| 2 | `instance` | [loopTagDecidableEq](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/looptagdecidableeq.md) | 18 | `declaration-track:a58ba314ccf9459752eb0afd32e5e7779270c855d23132125f6b358ba221ca63` |
| 3 | `def` | [falseTag](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/falsetag.md) | 21 | `declaration-track:49fbd70a9f4ec39adadf2ddbcf53eae4c183cc38f5ec8ce5a33ebc3189d6d2fc` |
| 4 | `def` | [trueTag](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/truetag.md) | 24 | `declaration-track:dc44d69aeac5a8dae2318161f680c344787279410e9c0bb01488cde448fd4e23` |
| 5 | `theorem` | [tags_distinct](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/tags-distinct.md) | 27 | `result-track:14d4cbd78a456e3391d5531124810b0b28dc5e7f74877f39d7848e1f6c22cd8d` |
| 6 | `def` | [falseOccurrence](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/falseoccurrence.md) | 33 | `declaration-track:6d0b0a5a903f392e99909ee781bd4c6dc21df11b4174d25ec353e2e3d4b6a753` |
| 7 | `def` | [trueOccurrence](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/trueoccurrence.md) | 36 | `declaration-track:ddb00612809c4c8187a4e08befc4f9094e8e2e3218403424f3152b3bc85ff561` |
| 8 | `def` | [oldRows](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/oldrows.md) | 39 | `declaration-track:a4e4bb3e81a6a5e6cd9cffde0cae25882abcc9f1ea8e44f67b507e747f814d4a` |
| 9 | `def` | [appendedRows](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/appendedrows.md) | 42 | `declaration-track:61938d326353f3defd072564c0584b51c236dab2d1a80907d52bfed91cdf0685` |
| 10 | `def` | [repeatedRows](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/repeatedrows.md) | 45 | `declaration-track:879be111ded5e9c7a34d0e93565ef2842ec75f08b426580a1ec2cc5565a16a22` |
| 11 | `theorem` | [old_inventory](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/old-inventory.md) | 48 | `result-track:d7b99775289f322f7dc3a0310e8b6ebe60f2781ef3bf3fdaaa31f4d275b01b17` |
| 12 | `theorem` | [appended_inventory](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/appended-inventory.md) | 52 | `result-track:29e401168a052cda609b848ee0394efdfcdff4b074092dd3eb51157d9c342459` |
| 13 | `theorem` | [repeated_inventory](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/repeated-inventory.md) | 58 | `result-track:9b55384323c7f7ffec0b52b297a8fcf0bd98f7ad6bd6c822f34133a20210164f` |
| 14 | `theorem` | [old_references](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/old-references.md) | 63 | `result-track:2d2c47db3d4999c2a05f2520909f9dce4b219c328d5a0527b7188d9617a653ad` |
| 15 | `theorem` | [stale_lookup_changed](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/stale-lookup-changed.md) | 69 | `result-track:5372772d6b63bb1c3476db02c485b804c0f6d827ded694acdcf4da6a408c97d7` |
| 16 | `theorem` | [stale_references_in_bounds](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/stale-references-in-bounds.md) | 76 | `result-track:9fcc390c784bf07fa1aa36daace55e1edab3a16612346f898f4e15930dd1ba43` |
| 17 | `theorem` | [stale_not_agreement](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/stale-not-agreement.md) | 80 | `result-track:589cc08f4628115950cf1f3899787fbde5fe03edf7cc4324681a428cfa010154` |
| 18 | `theorem` | [ranks_root_and_bounds_insufficient](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/ranks-root-and-bounds-insufficient.md) | 88 | `result-track:8d7e4f2f177d9760f30ce8003d0e01ea433b3d015502aed6a7c0c51cd5cfa09d` |
| 19 | `def` | [falseCertificate](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/falsecertificate.md) | 97 | `declaration-track:8e68bfd139b552bc6aeec567d6de8ce8630c8cce0aa09346ea081056f7ae67d7` |
| 20 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/example-source-edition-3.md) | 103 | `declaration-track:de6a50ab5e7d4076364e466e27ed9bc8d5050ea839278e18ca98ba682c215801` |
| 21 | `theorem` | [stale_actual_unpack](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/stale-actual-unpack.md) | 108 | `result-track:98684692e49343b54dfef58ecc57158b7414c2e6684096db9acde481ec7a44d1` |
| 22 | `theorem` | [stale_predicate_rejected](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/stale-predicate-rejected.md) | 115 | `result-track:700d9bd666403e53cc0f373df342027472299f880bee52e11be811e1e8ac2c98` |
| 23 | `theorem` | [stale_actual_revision](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/stale-actual-revision.md) | 126 | `result-track:d3c34a99090bc6125b906378181922f972b4c182db7d6f7a3066416194780aee` |
| 24 | `theorem` | [repeated_agreement](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/repeated-agreement.md) | 133 | `result-track:07df2b64aebe94f805247e4e2004df889167e3904f810957cb8ab530c6543d2d` |
| 25 | `theorem` | [repeated_certified_revision](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/repeated-certified-revision.md) | 140 | `result-track:ce4aaac179f20f19472d04dd03b1f41750c0fe7af47d6c1e19e83c4b1af4e9a9` |
| 26 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/example-source-edition-2.md) | 147 | `declaration-track:b6ef8e5c36f3c940e0f0e9a657a5e90158c096db460a3982a7ac897c8abf660a` |
| 27 | `example` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/example.md) | 151 | `declaration-track:58edce9e02f4bb8a9818f535077572b79eef917648f7bb7baea91df07c59829c` |
| 28 | `instance` | [boolQuiver](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/boolquiver.md) | 160 | `declaration-track:53c11fb1ed5d8c2ade5b32371971287c2f70eb7116c5013a066f6ff61260c561` |
| 29 | `instance` | [boolTagDecidableEq](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/booltagdecidableeq.md) | 162 | `declaration-track:a965ac6924519416b05065d1641b651a2d0d1663e3d37d043bf328e0f51c18cf` |
| 30 | `def` | [emptyBefore](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/emptybefore.md) | 165 | `declaration-track:4c4daf0122c7657d1b4ef2a7da432b826ea5bcef1c77ec48887e61fb680c003d` |
| 31 | `def` | [emptyAfter](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/emptyafter.md) | 168 | `declaration-track:9f307aa91a7fe28943961daeab82577fb4253de422022f461491b5ab6d7b3017` |
| 32 | `theorem` | [empty_raw_context_equal](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/empty-raw-context-equal.md) | 171 | `result-track:20057b611e0fa1cb2109d1f52ffce3f307b870de9d0ace4211c2448704ced6d5` |
| 33 | `theorem` | [empty_root_context_lost](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/empty-root-context-lost.md) | 175 | `result-track:c18023c607aa1c332aebc89464cfd5c6c06951a86d00ba6c445089c3c2cd9252` |
| 34 | `theorem` | [empty_rooted_output_equal](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/empty-rooted-output-equal.md) | 177 | `result-track:5347b164a8beaa424a8ef7c945e04bc4f9ebd2ddf4d6257468408b1de96af14a` |
| 35 | `theorem` | [empty_roots_still_required](../../../../../Combinatorics/GraphTheory/PositiveRootedTraceRevisionHistoricalSourceEdition2.lean/declarations/empty-roots-still-required.md) | 181 | `result-track:1f7774c28c949c846b5c7fffc9285a65b951c14643acccb86d648d5a4c92b001` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df3eee26bc1c3c02ea3cb46a2ee019351cdbfb3e83fd057f0cdb98344add0b15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrencef8b762520097adb6cd47bab8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
