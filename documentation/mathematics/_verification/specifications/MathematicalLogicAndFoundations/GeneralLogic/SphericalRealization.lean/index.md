# Verification target: Spherical Realization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e0aad3f2519a1edcdb43295e737e29747f46f99",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SphericalRealization/Variant724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SphericalRealization.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SphericalRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e0aad3f2519a1edcdb43295e737e29747f46f99`.

Source path: `GRWTSK/Topology/GeneralTopology/SphericalRealization/Variant724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SphericalRealization/Variant724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledSpherical.S2Realization` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InjectiveS3Realization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SphericalRealization.lean/declarations/injectives3realization.md) | 13 | `declaration-track:8331bd2f45e3d0656bd60cb247ab481f1a540a8b15fadfadc2c8790e8db31616` |
| 2 | `def` | [HasInjectiveS3RealizationWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SphericalRealization.lean/declarations/hasinjectives3realizationwitness.md) | 20 | `declaration-track:5d85bd8a36ab775e717203e6127301e5deff536a5cac0056c222fabdb13b85b6` |
| 3 | `inductive` | [SphericalRealizationChoice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SphericalRealization.lean/declarations/sphericalrealizationchoice.md) | 28 | `declaration-track:dee9ddf1fa94877b20280ff4697efcdec59b80ab295312f8daff2b21dc57357c` |
| 4 | `def` | [SphericalRealizationChoice.dimension](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SphericalRealization.lean/declarations/sphericalrealizationchoice-dimension.md) | 39 | `declaration-track:322ee070ee109fe2b8a3e5ce1b38ab1ab17c3a5cddaac49438c943a53bcdf58c` |
| 5 | `def` | [SelectedSphericalCarrierCompact](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SphericalRealization.lean/declarations/selectedsphericalcarriercompact.md) | 49 | `declaration-track:496df99e475f43d6be9096b9b6b5b47c57a8c764036a8a515c51851ed62c1706` |
| 6 | `def` | [chooseInjectiveSphericalRealization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SphericalRealization.lean/declarations/chooseinjectivesphericalrealization.md) | 62 | `declaration-track:64645b4941586b78eb6b7ce9cdf61f56a0d2444e5dbf8a797531eef584a1d523` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=484d073a357ce0b79616f6eab64f38a75ffb42ef578ca0d1b350b41307311adb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SphericalRealization/Variant724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SphericalRealization/Variant724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
