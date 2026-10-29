# Verification target: Conductor Three Partial Summation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d29ae7058e0dba58d20850e4c3ecf69d3095a9e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant5ac4cebdff315c439e62b87930595fd68d8a374424f54a50665ab6da03ea76e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d29ae7058e0dba58d20850e4c3ecf69d3095a9e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant5ac4cebdff315c439e62b87930595fd68d8a374424f54a50665ab6da03ea76e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant5ac4cebdff315c439e62b87930595fd68d8a374424f54a50665ab6da03ea76e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ConductorThreePrimePowerRemoval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCharacterCoefficient](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/primecharactercoefficient.md) | 22 | `declaration-track:6eae0f5e7629b481dfb3869d1db0c6a37270c3a4388ec85b0484d824ad8310bc` |
| 2 | `def` | [primeCharacterPartialSum](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/primecharacterpartialsum.md) | 26 | `declaration-track:c752d52222eb3eaefe881ddb16daf7a66d401dffb914dc74ad1bfbb5c6d658f8` |
| 3 | `theorem` | [primeCharacterPartialSum_succ](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/primecharacterpartialsum-succ.md) | 29 | `result-track:4f68a2117ca59af9ceb52ac1a7e626532a0fa0f935b3d9f4c0c91bb96a339b90` |
| 4 | `theorem` | [conductorThreeTheta_succ](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/conductorthreetheta-succ.md) | 39 | `result-track:07697d81a449f96d9d59b11046907acf9210520de2c014215728c03c0c91f0fb` |
| 5 | `theorem` | [conductorThreeTheta_eq_abel](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/conductorthreetheta-eq-abel.md) | 52 | `result-track:3e77cc97c56f4e34fa16180e35d14d0a42a961b26040fae6fa795ff9bbe3692a` |
| 6 | `theorem` | [conductorThreeTheta_eq_primeCharacterSum_abel](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/conductorthreetheta-eq-primecharactersum-abel.md) | 69 | `result-track:3fa01c00e2859d5a4fc34917a4a059c9c578092896f738c4d09f57eb7b86abb8` |
| 7 | `def` | [reciprocalLog](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/reciprocallog.md) | 79 | `declaration-track:cf3599811dcf416a678d8b62e46f50fae22aeb865a2b57ad0c661d2f5500fa7e` |
| 8 | `theorem` | [primeCharacterCoefficient_eq_theta_increment_div_log](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/primecharactercoefficient-eq-theta-increment-div-log.md) | 81 | `result-track:8d5ede28b2774e7db2b814ae5c97fcf6c86b15d9b445147024c6f72840a0e54d` |
| 9 | `theorem` | [primeCharacterPartialSum_eq_inverseAbel_add_two](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/primecharacterpartialsum-eq-inverseabel-add-two.md) | 105 | `result-track:66b9e05e9499f206481a6d92224740a4433b491b13040b1f3bfcd9005cc2e614` |
| 10 | `theorem` | [primeCharacterPartialSum_eq_inverseAbel](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/primecharacterpartialsum-eq-inverseabel.md) | 143 | `result-track:d81f84ec66937a4e9db68b0a1d8d99883497af077f02fe1fefc58cc826001b7d` |
| 11 | `theorem` | [conductorThreePrimeCharacterSum_eq_inverseAbel](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/conductorthreeprimecharactersum-eq-inverseabel.md) | 155 | `result-track:0ba0fe341d3f7b0db0a2b3ea53cb9d174559c01b3df8b6ec57243bedb23cd9ab` |
| 12 | `def` | [primeCharacterStep](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/primecharacterstep.md) | 167 | `declaration-track:80196c57db533f27e51bafbf47b01c6778d3d5908cf41064921a5626037ac28a` |
| 13 | `def` | [conductorThreeThetaStep](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/conductorthreethetastep.md) | 171 | `declaration-track:98708ace79080e225f15d2e0c5f469085d9088b0b013546875d28ed083caa1b6` |
| 14 | `theorem` | [primeCharacterStep_natCast](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/primecharacterstep-natcast.md) | 174 | `result-track:4ef81d3b63ff2482c4d890e1b2621215831f667ed913bb590e53e94239647dd4` |
| 15 | `theorem` | [conductorThreeThetaStep_natCast](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/conductorthreethetastep-natcast.md) | 178 | `result-track:4da764e2d06a5b93234709b04d6bc312dadc0a1e06bbed6a449f6b927c4aff18` |
| 16 | `theorem` | [conductorThreeThetaStep_eq_abel](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/conductorthreethetastep-eq-abel.md) | 183 | `result-track:1c1261195d3cf900cf77e18720d4f0efd3634f19ef0740b2512cfd7ddee2e121` |
| 17 | `theorem` | [primeCharacterStep_eq_inverseAbel](../../../../Combinatorics/ConductorThreePartialSummationNamespaced.lean/declarations/primecharacterstep-eq-inverseabel.md) | 193 | `result-track:4e542954deb738612f52f4e7a9e87a61a3dc21ae6139b0e639c98040d97e095b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5253d94e1e0dff95ec222976d43f097873e8ae2c254c84445a9a29a26932a5cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant5ac4cebdff315c439e62b87930595fd68d8a374424f54a50665ab6da03ea76e8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Variant5ac4cebdff315c439e62b87930595fd68d8a374424f54a50665ab6da03ea76e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
