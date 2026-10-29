# Verification target: Imo1959 Q2 Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94fe68bb7dda2be48f9e5471b387f10008e3a60c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Imo1959Q2/Variantf0ac863251ef6ce2edb44f1e838e9b8a640d58094186931b0bc35925885bffb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94fe68bb7dda2be48f9e5471b387f10008e3a60c`.

Source path: `GRWTSK/Analysis/Imo1959Q2/Variantf0ac863251ef6ce2edb44f1e838e9b8a640d58094186931b0bc35925885bffb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Imo1959Q2/Variantf0ac863251ef6ce2edb44f1e838e9b8a640d58094186931b0bc35925885bffb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsGood](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood.md) | 44 | `declaration-track:50df8f385b287b37edc92cad28047a1e3cf8956e888ed10a4d9691f1356a9e3e` |
| 2 | `theorem` | [isGood_iff](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-iff.md) | 50 | `result-track:4bdc16569a83f5f7977d60000e88cf95a7b92e525b546af932239e1a741e9587` |
| 3 | `theorem` | [IsGood.one_half_le](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-one-half-le.md) | 67 | `result-track:9376312f2839e3c03c543840ed5adfee96012354a4883be9f1798ee8fa803651` |
| 4 | `theorem` | [sqrt_two_mul_sub_one_le_one](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/sqrt-two-mul-sub-one-le-one.md) | 69 | `result-track:3eb1e862367ecceb5ec3b52c65f28c26089c6f85e82c6a3882dcd441638c40bd` |
| 5 | `theorem` | [isGood_iff_eq_sqrt_two](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-iff-eq-sqrt-two.md) | 72 | `result-track:1e3a0db66728dceb47a0d0b660d825e756cd717783b22694227093e892cba765` |
| 6 | `theorem` | [isGood_iff_eq_sqrt](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-iff-eq-sqrt.md) | 79 | `result-track:50552afe0f704a37ee05ecf4286210f98a95f120eceb82d807e0cc8761294828` |
| 7 | `theorem` | [IsGood.sqrt_two_lt_of_one_lt](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-sqrt-two-lt-of-one-lt.md) | 87 | `result-track:33aa6f187038607fbc4200039b8316609f5a42214b0890ee1368149a33b68e72` |
| 8 | `theorem` | [IsGood.eq_sqrt_two_iff_le_one](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-eq-sqrt-two-iff-le-one.md) | 92 | `result-track:7121efea75b338bb0fcc24f77bfcde8ba8e937ad3fbc152d4a0a356207ba4c9b` |
| 9 | `theorem` | [IsGood.sqrt_two_lt_iff_one_lt](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-sqrt-two-lt-iff-one-lt.md) | 96 | `result-track:85cb4ec4184b51238f18c608ce1ec977c1810632edbc72b4038a0e964068ad22` |
| 10 | `theorem` | [IsGood.sqrt_two_le](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-sqrt-two-le.md) | 99 | `result-track:64a712aa738cd6796ebaaf66610422acaa747b762135ffc866ed85ba9b532857` |
| 11 | `theorem` | [isGood_iff_of_sqrt_two_lt](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-iff-of-sqrt-two-lt.md) | 103 | `result-track:707c9aa7df9f3625a285c00413ca3377809a90aee2a895225ab1ddd57e8d816f` |
| 12 | `theorem` | [isGood_sqrt2_iff](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-sqrt2-iff.md) | 116 | `result-track:a045d84593fca0b7a4b7a7928ae97bed7de161d5da2155ff4cf302f4d763f619` |
| 13 | `theorem` | [not_isGood_one](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/not-isgood-one.md) | 120 | `result-track:89f036f0a78f2fa7f2872677de171e5ca32be5e4fe159ed9cfe216cf4f8e215b` |
| 14 | `theorem` | [isGood_two_iff](../../../../RealFunctions/Imo1959Q2NamespacedPublic.lean/declarations/isgood-two-iff.md) | 123 | `result-track:0289344a310966b0c729e7926ada57c111eb2b10a13ff95df1eaa3bbff1a1cd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d129fa76faf943619b323127889801cc5c2dbb0971657815eb492d30b4384a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Imo1959Q2/Variantf0ac863251ef6ce2edb44f1e838e9b8a640d58094186931b0bc35925885bffb0.lean","GRWTSK/_verification/specifications/Analysis/Imo1959Q2/Variantf0ac863251ef6ce2edb44f1e838e9b8a640d58094186931b0bc35925885bffb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
