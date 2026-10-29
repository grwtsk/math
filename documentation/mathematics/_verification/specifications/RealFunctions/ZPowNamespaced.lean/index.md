# Verification target: ZPow Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5002a9c1b7461ee63ffde74677001a861572fc78",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant86eaf19563ba799329ca7f049192753dfbaaceded9331c4aa703c313ddfc362d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ZPowNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/ZPowNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5002a9c1b7461ee63ffde74677001a861572fc78`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant86eaf19563ba799329ca7f049192753dfbaaceded9331c4aa703c313ddfc362d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant86eaf19563ba799329ca7f049192753dfbaaceded9331c4aa703c313ddfc362d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/hasstrictderivat-zpow.md) | 43 | `result-track:1fc035d35091dc7234c7d00932086a65210e2d907dd6739190b74e6d0d90bf7d` |
| 2 | `theorem` | [hasDerivAt_zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/hasderivat-zpow.md) | 64 | `result-track:1822d4b210d9e7057357ef4aa2e5dd8a53befbbcf230cd2a900b44a192295661` |
| 3 | `theorem` | [hasDerivWithinAt_zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/hasderivwithinat-zpow.md) | 68 | `result-track:351634a33eddf0c2bbd2d81b95619f56a1478e58197441cbe26268b61c169032` |
| 4 | `theorem` | [differentiableAt_zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/differentiableat-zpow-source-edition-2.md) | 72 | `result-track:8f661f6f938a560682f899c876e97db2a6b480a854ee0b1d0bc41a92d57fc61f` |
| 5 | `theorem` | [differentiableWithinAt_zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/differentiablewithinat-zpow.md) | 76 | `result-track:04abfc6033eb04f8e5979127895e5bfa807ff9e84ef61673d5be7f13c43de57f` |
| 6 | `theorem` | [differentiableOn_zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/differentiableon-zpow-source-edition-2.md) | 80 | `result-track:30071d99868fdd002115d10d0cb8480d735db57dda72f7e39aff654e91966d4f` |
| 7 | `theorem` | [deriv_zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/deriv-zpow.md) | 84 | `result-track:33bf451d904def545e0636f4cada1c4782fa4e01c71e7c58a4dd1590a9b7f6f2` |
| 8 | `theorem` | [deriv_zpow'](../../../../RealFunctions/ZPowNamespaced.lean/declarations/deriv-zpow-source-edition-2.md) | 93 | `result-track:68df23e54135bb3688796777410656fa26f4ae1506a125126f7813a80fd019f1` |
| 9 | `theorem` | [derivWithin_zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/derivwithin-zpow.md) | 96 | `result-track:8903e6d63d665ed0271bdd80832af354378ac524865a88b2ff38609bb24fe0b6` |
| 10 | `theorem` | [iter_deriv_zpow'](../../../../RealFunctions/ZPowNamespaced.lean/declarations/iter-deriv-zpow.md) | 101 | `result-track:0ddba96371d37f3a190bdd109812def9bd8a1f474fd035a0fcb49326f96fc362` |
| 11 | `theorem` | [iter_deriv_zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/iter-deriv-zpow-source-edition-2.md) | 111 | `result-track:52527ab320f58b3117a77547613e83afc438d804cba4dde8895076932d80244a` |
| 12 | `theorem` | [iter_deriv_pow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/iter-deriv-pow-source-edition-2.md) | 115 | `result-track:ecccb60ffe65f58449771618311972824f3b89f8a4b1cfcb2c952edf9a5fbc40` |
| 13 | `theorem` | [iter_deriv_pow'](../../../../RealFunctions/ZPowNamespaced.lean/declarations/iter-deriv-pow.md) | 125 | `result-track:325c29303ca897c713f3dfae8f366d1666dfc983316fc9c4768ebff11b34d6d9` |
| 14 | `theorem` | [iter_deriv_inv](../../../../RealFunctions/ZPowNamespaced.lean/declarations/iter-deriv-inv.md) | 130 | `result-track:99fcd8e8b8ee47f3c833242a4dc80fd7865b1d2e679c2c74293853a66379610a` |
| 15 | `theorem` | [iter_deriv_inv'](../../../../RealFunctions/ZPowNamespaced.lean/declarations/iter-deriv-inv-source-edition-2.md) | 140 | `result-track:b92ff9d1891e2df1717873a76b9b2424375d4a12c8353360fc6c6a1398cdc8b5` |
| 16 | `theorem` | [DifferentiableWithinAt.zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/differentiablewithinat-zpow-source-edition-2.md) | 146 | `result-track:cee1fb5b9939b0c61e64cc182c823b66c70f4c86a45b8f06ff888b74218e2153` |
| 17 | `theorem` | [DifferentiableAt.zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/differentiableat-zpow.md) | 150 | `result-track:1aa4aee0372febf47164b8d4c3cf434794695d6740664ee6fefd14b5001e3289` |
| 18 | `theorem` | [DifferentiableOn.zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/differentiableon-zpow.md) | 154 | `result-track:2dedb96d230db59624c655023581cafb0007c5a3686625818b1a632737db50cf` |
| 19 | `theorem` | [Differentiable.zpow](../../../../RealFunctions/ZPowNamespaced.lean/declarations/differentiable-zpow.md) | 158 | `result-track:d351a95f51cb0c1f69f22eccfdc4346fedfad49b7c63b48d56a464c0a2ba73c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=687a1d2be8ce53b300425407d53208b2fd340b1ee1a9b37c1115b89e2d509874 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant86eaf19563ba799329ca7f049192753dfbaaceded9331c4aa703c313ddfc362d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ZPow/Variant86eaf19563ba799329ca7f049192753dfbaaceded9331c4aa703c313ddfc362d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
