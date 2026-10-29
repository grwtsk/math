# Verification target: Away Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b2df4701a5f3cfc2194048cb2a50232307d62191",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Away/Variant1df372fbb381978e01f18db0f74be92d39f78be8c9a303ead4fe864ae15aa57b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b2df4701a5f3cfc2194048cb2a50232307d62191`.

Source path: `GRWTSK/Algebra/GroupTheory/Away/Variant1df372fbb381978e01f18db0f74be92d39f78be8c9a303ead4fe864ae15aa57b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Away/Variant1df372fbb381978e01f18db0f74be92d39f78be8c9a303ead4fe864ae15aa57b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AwayMap](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaymap.md) | 51 | `declaration-track:b7ed67b007b8eef351385e781008618939c2bf2e295d6f33f44b127a91f78f0c` |
| 2 | `def` | [AwayMap.invSelf](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaymap-invself.md) | 56 | `declaration-track:5f9efb3f0d964448a9f5cc2e7f9deb11140fba04e83767b1dd6725cfa8447f17` |
| 3 | `def` | [AwayMap.lift](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaymap-lift-source-edition-2.md) | 61 | `declaration-track:9539146ab150723d6b69e42fefba462ef2ecf153a68e242ca549c6caf9a7ff35` |
| 4 | `theorem` | [AwayMap.lift_eq](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaymap-lift-eq.md) | 69 | `result-track:1ddd73de65542108ae58a7b8c11492b1bd299bb821903c027b54d38740c0faf4` |
| 5 | `theorem` | [AwayMap.lift_comp](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaymap-lift-comp-source-edition-2.md) | 73 | `result-track:c349bb8d967d519aa18fb24eeef53765d736ef6524373f766a78758d26f6dbbd` |
| 6 | `def` | [awayToAwayRight](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaytoawayright.md) | 78 | `declaration-track:05ab911889d1dfd13e2611579afdbb43dbf814cdeb7c3dac94688f7268ba7ba0` |
| 7 | `def` | [AwayMap.negSelf](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaymap-negself.md) | 100 | `declaration-track:892a2fcda07ccf1f1310b10c23a6c3eab01d2898ba8469c7f8e798b2446353c0` |
| 8 | `def` | [AwayMap.lift](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaymap-lift.md) | 106 | `declaration-track:73f865b2a6a6285653c599f48fa2d4b27f43949a287d979042e358900c714cad` |
| 9 | `theorem` | [AwayMap.lift_eq](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaymap-lift-eq-source-edition-2.md) | 116 | `result-track:4b5ebf2d74356a7f9ccb3b06b4df87df0a8a494129477424794feee946dfabb8` |
| 10 | `theorem` | [AwayMap.lift_comp](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaymap-lift-comp.md) | 120 | `result-track:b19ffe0c33cb3b749c6466012738517a0544434065a5715cce17a14f33083ddd` |
| 11 | `def` | [awayToAwayRight](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/awaytoawayright-source-edition-2.md) | 125 | `declaration-track:0efb79cb2f1a4dddde873121c2b30809e36b517470541f3a6eb3115a5a4228dc` |
| 12 | `abbrev` | [Away](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/away.md) | 146 | `declaration-track:6f7c351e66d4c561afe7765e9067d1bf03d8f7115b438c4b22558daba1cf993e` |
| 13 | `def` | [Away.invSelf](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/away-invself.md) | 154 | `declaration-track:ebc88bc3ed40e82eedbcb54b414b0089ea2d34af04d964b72034ad4c87f35db3` |
| 14 | `class` | [of](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/of.md) | 161 | `declaration-track:aad4f18090a5d9720797a15762f701e818af393b8b49b7c99193d3337dd4f2bd` |
| 15 | `abbrev` | [Away.monoidOf](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/away-monoidof.md) | 162 | `declaration-track:e6199c1f81561de361a9d1c1247f17f5a941fd1fa31bdb8495fb509713682b46` |
| 16 | `theorem` | [Away.mk_eq_monoidOf_mk'](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/away-mk-eq-monoidof-mk.md) | 166 | `result-track:b5ec01f80f2562d85fbd36d1d2af499f6a9d3cdee82f27f62ec24ad758bdaf0c` |
| 17 | `def` | [Away.mulEquivOfQuotient](../../../../GroupTheoryAndGeneralizations/AwayNamespaced.lean/declarations/away-mulequivofquotient.md) | 174 | `declaration-track:688990ec2c2ae13f3c65a431aa9689ad0a50b64ca5458abe5d2eb1a7fbbb8b0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a1f9890aea4404097ee35c4f6ffb54049596dc8717498ae125ffe16a48d1bc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Away/Variant1df372fbb381978e01f18db0f74be92d39f78be8c9a303ead4fe864ae15aa57b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Away/Variant1df372fbb381978e01f18db0f74be92d39f78be8c9a303ead4fe864ae15aa57b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
