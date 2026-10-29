# Verification target: Countable Separating Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ec7e07ed4102a255a1b61aff5f6faccc523603",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountableSeparating/Variant64a9e202bfd7aa045f27672381b26ffa9b4de386b97d1d13592282f53a0dd428.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ec7e07ed4102a255a1b61aff5f6faccc523603`.

Source path: `GRWTSK/Topology/GeneralTopology/CountableSeparating/Variant64a9e202bfd7aa045f27672381b26ffa9b4de386b97d1d13592282f53a0dd428.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountableSeparating/Variant64a9e202bfd7aa045f27672381b26ffa9b4de386b97d1d13592282f53a0dd428.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableSeparatingOn` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [range_Iio](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/declarations/range-iio.md) | 35 | `declaration-track:24665482194a293c60484f4e92399b978ad4ca3e4aa8453f2a2afec24ff69bfd` |
| 2 | `instance` | [range_Ioi](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/declarations/range-ioi.md) | 55 | `declaration-track:ffbdff9ad379291efa0235292dcd7b1c4a90b16b2c6deba3c2231fb36bd5126d` |
| 3 | `instance` | [range_Iic](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/declarations/range-iic.md) | 58 | `declaration-track:ac7fc9641fd04665f218f85709950d71e6197a4372af87f1f6e84274f9917ef8` |
| 4 | `instance` | [range_Ici](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/declarations/range-ici.md) | 63 | `declaration-track:fa9be24f234403fd9583ece666d4d5393128e42f59278e45ff946afa7fc4b094` |
| 5 | `lemma` | [of_forall_eventually_lt_iff](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/declarations/of-forall-eventually-lt-iff.md) | 72 | `result-track:b184a460cdbe1bf3b977a3e0ca70c3b13b3c26fc7519f6632a36488b02cda95f` |
| 6 | `lemma` | [of_forall_eventually_le_iff](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/declarations/of-forall-eventually-le-iff.md) | 75 | `result-track:5aeead64b92ae4528b5c38bacd7d2b0a37eb55d4e1171a0f7fc8aa1407d453d6` |
| 7 | `lemma` | [of_forall_eventually_gt_iff](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/declarations/of-forall-eventually-gt-iff.md) | 78 | `result-track:34236678386a2bcd7f8dbe81d26ae373491ba398a72b33077b427086132363b7` |
| 8 | `lemma` | [of_forall_eventually_ge_iff](../../../../GeneralTopology/CountableSeparatingNamespaced.lean/declarations/of-forall-eventually-ge-iff.md) | 81 | `result-track:db6f5b134d5c451766dc8c37155f78aa30247361338077f8fb4c906447633015` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45c644af902c42d250cdb43a7ea2282256dc728c8bf3b41b77353752d2e145e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CountableSeparating/Variant64a9e202bfd7aa045f27672381b26ffa9b4de386b97d1d13592282f53a0dd428.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CountableSeparating/Variant64a9e202bfd7aa045f27672381b26ffa9b4de386b97d1d13592282f53a0dd428.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
