# Verification target: GRWTSK.Topology.Idempotent.Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2661978ff98de2885b87bed9efebf19d76a37a4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean/index.md) · [Full source](../../../../mathematics/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2661978ff98de2885b87bed9efebf19d76a37a4`.

Source path: `GRWTSK/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isIdempotentElem_toLinearMap_iff](../../../../mathematics/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean/declarations/isidempotentelem-tolinearmap-iff--b959a146f93bd4cfef89b954.md) | 38 | `result-track:b959a146f93bd4cfef89b9543700175e6aafe41afa52bf9360710bb6a84587c0` |
| 2 | `lemma` | [ext_iff](../../../../mathematics/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean/declarations/ext-iff--6c443d5c7af7b69782244821.md) | 52 | `result-track:6c443d5c7af7b697822448210f63813309a38121c07125aee5c550a23b9bb777` |
| 3 | `lemma` | [range_mem_invtSubmodule_iff](../../../../mathematics/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean/declarations/range-mem-invtsubmodule-iff--29add5a9df15dbb01cfb49ba.md) | 61 | `result-track:29add5a9df15dbb01cfb49ba5b702b28df70b0aa75eb37d2437a8df11b0d689a` |
| 4 | `lemma` | [ker_mem_invtSubmodule_iff](../../../../mathematics/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean/declarations/ker-mem-invtsubmodule-iff--9ba05ceedc92a0d2cee8624f.md) | 72 | `result-track:9ba05ceedc92a0d2cee8624f7406f96c129036650c81be12577686971810ccf1` |
| 5 | `lemma` | [commute_iff](../../../../mathematics/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean/declarations/commute-iff--1f502dcf9a73670609d1a4d5.md) | 83 | `result-track:1f502dcf9a73670609d1a4d5c171426ad6e71dac71b34dc725c093cebb9eaad0` |
| 6 | `theorem` | [commute_iff_of_isUnit](../../../../mathematics/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean/declarations/commute-iff-of-isunit--bed4da8c8e33ded9e31e936c.md) | 93 | `result-track:bed4da8c8e33ded9e31e936cde9bacf84d8a208efd58324015e1ec73f479462e` |
| 7 | `theorem` | [isClosed_range](../../../../mathematics/Topology/Idempotent/Variant9f5bdc6d5d7b5382db454665dfbc0b6ccf0bda51b87b811e245a6468f8baec32.lean/declarations/isclosed-range--009538ba2ab973cec7d27807.md) | 101 | `result-track:009538ba2ab973cec7d27807bc3c757887697a92f890a9cc9c2c77e8fa2b7c22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
