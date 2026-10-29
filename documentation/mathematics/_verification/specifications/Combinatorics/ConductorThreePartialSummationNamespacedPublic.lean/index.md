# Verification target: Conductor Three Partial Summation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94d91b71cb8f8629b7d2c653691b3762377aab2f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant73c94cae21c02d16711f0c7296ca90864e783150f90094cf48598488c6e7bedf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94d91b71cb8f8629b7d2c653691b3762377aab2f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant73c94cae21c02d16711f0c7296ca90864e783150f90094cf48598488c6e7bedf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant73c94cae21c02d16711f0c7296ca90864e783150f90094cf48598488c6e7bedf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCharacterCoefficient](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/primecharactercoefficient.md) | 37 | `declaration-track:51dc73b45e4f0d398dba7fe33e4ffed759805fe93aa91c6528d0e0b6aec7082e` |
| 2 | `def` | [primeCharacterPartialSum](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/primecharacterpartialsum.md) | 42 | `declaration-track:63e1e16f2f87a6be1d6c8f257dfbf18408614f2fc438856c9c053dcf6e70b6ac` |
| 3 | `theorem` | [primeCharacterPartialSum_succ](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/primecharacterpartialsum-succ.md) | 45 | `result-track:fdaab3723ccb5cf9cdf6196f06f76cbc39703b88a421eb502e8611072d8a9df6` |
| 4 | `theorem` | [conductorThreeTheta_succ](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/conductorthreetheta-succ.md) | 55 | `result-track:3c87fd3d4ce406f1d779bdbfcc3301e13828d85adfea919aecdf99f09c3c2f28` |
| 5 | `theorem` | [conductorThreeTheta_eq_abel](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/conductorthreetheta-eq-abel.md) | 68 | `result-track:174b8d97304b94f1237ee1a7bdc1e5d66e894a2e8eaa8ef9dbe693c4828c8d23` |
| 6 | `theorem` | [conductorThreeTheta_eq_primeCharacterSum_abel](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/conductorthreetheta-eq-primecharactersum-abel.md) | 85 | `result-track:0ef5f685c725fb2109871e607b092d6e5fef145f3a0d32e4da066765c7da54de` |
| 7 | `def` | [reciprocalLog](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/reciprocallog.md) | 96 | `declaration-track:c91f1aea7ad6fcc45970c4a2a40b4c7c008c4292d5c9c16fb982872f136e2798` |
| 8 | `theorem` | [primeCharacterCoefficient_eq_theta_increment_div_log](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/primecharactercoefficient-eq-theta-increment-div-log.md) | 98 | `result-track:6f3ed38e744bc5bbee6b2f449e413fba7e4245a091a25d9b55f5755395b97f8b` |
| 9 | `theorem` | [primeCharacterPartialSum_eq_inverseAbel_add_two](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/primecharacterpartialsum-eq-inverseabel-add-two.md) | 122 | `result-track:d563919f68d9e649a8766a21c4eb91df6689a8abe9a8d072d7cc3061848da904` |
| 10 | `theorem` | [primeCharacterPartialSum_eq_inverseAbel](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/primecharacterpartialsum-eq-inverseabel.md) | 160 | `result-track:76cb8093f04ef41b364697b5af44ff6426d5c5bad953049a62b9a00fb426dd3d` |
| 11 | `theorem` | [conductorThreePrimeCharacterSum_eq_inverseAbel](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/conductorthreeprimecharactersum-eq-inverseabel.md) | 172 | `result-track:75f2fc778d66e290cb208673b501e037184b618ecf927b15f693026ab807b60c` |
| 12 | `def` | [primeCharacterStep](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/primecharacterstep.md) | 185 | `declaration-track:aedb44cd2e6112c2abdc8c2484e8be25b5b04699006a78a984a4eab0d42bafbb` |
| 13 | `def` | [conductorThreeThetaStep](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/conductorthreethetastep.md) | 190 | `declaration-track:75f0cc1b5b34a24b712306d325bcdaf2878b3a487c4d08f8976021398c26f158` |
| 14 | `theorem` | [primeCharacterStep_natCast](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/primecharacterstep-natcast.md) | 193 | `result-track:323bb54667e161aa272b61d75638280e7cde77897978998ef4dd3687e6d441a0` |
| 15 | `theorem` | [conductorThreeThetaStep_natCast](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/conductorthreethetastep-natcast.md) | 197 | `result-track:a0e27aa14327074c8d445c74534772661ec37660ee347d38029128cd5e77af56` |
| 16 | `theorem` | [conductorThreeThetaStep_eq_abel](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/conductorthreethetastep-eq-abel.md) | 202 | `result-track:a70d3ef507cb3e3bae8bd1555fe59235370952d7a36d41f1eb2d71006c8538b1` |
| 17 | `theorem` | [primeCharacterStep_eq_inverseAbel](../../../../Combinatorics/ConductorThreePartialSummationNamespacedPublic.lean/declarations/primecharacterstep-eq-inverseabel.md) | 212 | `result-track:bf411567ca670dc87e606875205080a8176c2126c2db74963b126e897e9c3a26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ac7290b2222047cbeb559d3fa2161e0b97ef88449e360e73d69590f4c1a5d62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant73c94cae21c02d16711f0c7296ca90864e783150f90094cf48598488c6e7bedf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant73c94cae21c02d16711f0c7296ca90864e783150f90094cf48598488c6e7bedf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
