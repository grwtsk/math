# Verification target: Darboux Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8718cc31b647b01dc920e610088f2ff3977c9eb0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant1dc6b3c5ba1ef21a96730b766afd46be36f102d337a5f9d1770264b4922a6583.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DarbouxPublic.lean/index.md) · [Full source](../../../../RealFunctions/DarbouxPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8718cc31b647b01dc920e610088f2ff3977c9eb0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant1dc6b3c5ba1ef21a96730b766afd46be36f102d337a5f9d1770264b4922a6583.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant1dc6b3c5ba1ef21a96730b766afd46be36f102d337a5f9d1770264b4922a6583.lean.json)

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
| 1 | `theorem` | [exists_hasDerivWithinAt_eq_of_gt_of_lt](../../../../RealFunctions/DarbouxPublic.lean/declarations/exists-hasderivwithinat-eq-of-gt-of-lt.md) | 30 | `result-track:25703dda83ca534dbbee368fd81cb465763cc45a843329256b04bba379652468` |
| 2 | `theorem` | [exists_hasDerivWithinAt_eq_of_lt_of_gt](../../../../RealFunctions/DarbouxPublic.lean/declarations/exists-hasderivwithinat-eq-of-lt-of-gt.md) | 66 | `result-track:19414cfabfd3c06e1778e74a8f474fdd22a10481b4de351897ca7afd5be30e25` |
| 3 | `theorem` | [Set.OrdConnected.image_hasDerivWithinAt](../../../../RealFunctions/DarbouxPublic.lean/declarations/set-ordconnected-image-hasderivwithinat.md) | 76 | `result-track:bff1d2cffad4ff42b18742bff13648536603abfc1c17ddc51c46d7ef52498e72` |
| 4 | `theorem` | [Set.OrdConnected.image_derivWithin](../../../../RealFunctions/DarbouxPublic.lean/declarations/set-ordconnected-image-derivwithin.md) | 94 | `result-track:cbfd60787f087e6da922d2b38a0bd240046b27dfffe1729f9885054ea0b9caf6` |
| 5 | `theorem` | [Set.OrdConnected.image_deriv](../../../../RealFunctions/DarbouxPublic.lean/declarations/set-ordconnected-image-deriv.md) | 100 | `result-track:7d6a1d837dc1b7b6766f1b46521cbb4ec9eb9111fdae87f203a8490256deb45c` |
| 6 | `theorem` | [Convex.image_hasDerivWithinAt](../../../../RealFunctions/DarbouxPublic.lean/declarations/convex-image-hasderivwithinat.md) | 106 | `result-track:06ea3f8716290754d174a3fd206940c1613eb0dcd3242a58dc1b04adfbbbb8e2` |
| 7 | `theorem` | [Convex.image_derivWithin](../../../../RealFunctions/DarbouxPublic.lean/declarations/convex-image-derivwithin.md) | 112 | `result-track:b70488350904e52a8f27796fb8ec1fdd944f686e99b1873eece186de4a42fe4e` |
| 8 | `theorem` | [Convex.image_deriv](../../../../RealFunctions/DarbouxPublic.lean/declarations/convex-image-deriv.md) | 118 | `result-track:0c32f5adc298a4820b12b864b4356ac73a6d04399288bdb36c5185af7a650104` |
| 9 | `theorem` | [exists_hasDerivWithinAt_eq_of_ge_of_le](../../../../RealFunctions/DarbouxPublic.lean/declarations/exists-hasderivwithinat-eq-of-ge-of-le.md) | 124 | `result-track:4f2d3cb6825eaf09cb3094fb0731f937289a761d8ee244d52c544456ab2fa862` |
| 10 | `theorem` | [exists_hasDerivWithinAt_eq_of_le_of_ge](../../../../RealFunctions/DarbouxPublic.lean/declarations/exists-hasderivwithinat-eq-of-le-of-ge.md) | 132 | `result-track:b58fe2207423e8ba062eb001e63bb7b30a02e1ade45529e852482c6d57b30f7d` |
| 11 | `theorem` | [hasDerivWithinAt_forall_lt_or_forall_gt_of_forall_ne](../../../../RealFunctions/DarbouxPublic.lean/declarations/hasderivwithinat-forall-lt-or-forall-gt-of-forall-ne.md) | 140 | `result-track:3e600a059ad0ce18b373a7aae0c44fb86979b4d9672e2a7d34e62e561d2780eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d94e9aa1dca64094a88ae9934754060bf8064996b755508049bdb823123cfc0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant1dc6b3c5ba1ef21a96730b766afd46be36f102d337a5f9d1770264b4922a6583.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Darboux/Variant1dc6b3c5ba1ef21a96730b766afd46be36f102d337a5f9d1770264b4922a6583.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
