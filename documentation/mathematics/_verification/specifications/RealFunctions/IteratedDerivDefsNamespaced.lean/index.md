# Verification target: Iterated Deriv Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ff08774614c00c44490691c85df17723f649e61",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant7fc597a5c51fd677a314e7d511d54cb16c0b1d9ba21ff92b2bb522256d83c1ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ff08774614c00c44490691c85df17723f649e61`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant7fc597a5c51fd677a314e7d511d54cb16c0b1d9ba21ff92b2bb522256d83c1ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant7fc597a5c51fd677a314e7d511d54cb16c0b1d9ba21ff92b2bb522256d83c1ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iteratedDeriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderiv.md) | 60 | `declaration-track:0222f7e35d5e393c2a900f2d12d17ada7061d9df3483aa84ba24e2a85da82d21` |
| 2 | `def` | [iteratedDerivWithin](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderivwithin.md) | 65 | `declaration-track:51d86ec8e9844bc0919a3afb6b8ff7a26fd58b51e01b8464e80b52d5d9f4fd03` |
| 3 | `theorem` | [iteratedDerivWithin_univ](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderivwithin-univ.md) | 70 | `result-track:619ec3c88c1df66f919788a42a06bc695cfea72c7ad22ac8adc9d344548b8893` |
| 4 | `theorem` | [iteratedDerivWithin_eq_iteratedFDerivWithin](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderivwithin-eq-iteratedfderivwithin.md) | 77 | `result-track:4ea462c20e30e1996128a35082bab6f43f0c1fba7fe105fe76efa8bde9069e7a` |
| 5 | `theorem` | [iteratedDerivWithin_eq_equiv_comp](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderivwithin-eq-equiv-comp.md) | 83 | `result-track:a9d37ce7dda4e2b3b1d6365aeeabb20e5b32c158e15603c09c8111665f4d8535` |
| 6 | `theorem` | [iteratedFDerivWithin_eq_equiv_comp](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedfderivwithin-eq-equiv-comp.md) | 89 | `result-track:f652bb3fbd6c60fe1ac5912375e181f2da14c0cfbbb612f751f46bc785588973` |
| 7 | `theorem` | [iteratedFDerivWithin_apply_eq_iteratedDerivWithin_mul_prod](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedfderivwithin-apply-eq-iteratedderivwithin-mul-prod.md) | 97 | `result-track:866b1a237d46596bbbe1d029179a1c720ad308a5a66e63907e24583a37f19749` |
| 8 | `theorem` | [norm_iteratedFDerivWithin_eq_norm_iteratedDerivWithin](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/norm-iteratedfderivwithin-eq-norm-iteratedderivwithin.md) | 103 | `result-track:0aa3f98630c765c0eabd77576650b246eb3de964ae540dace74cdee8292d00cf` |
| 9 | `theorem` | [iteratedDerivWithin_zero](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderivwithin-zero.md) | 108 | `result-track:160658f7cd97168731dbaf638ee7d3273672024ada0885fd5dfb48461d14b1eb` |
| 10 | `theorem` | [iteratedDerivWithin_one](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderivwithin-one.md) | 113 | `result-track:ca2067b6b33bbb4110bca5049649414bb8d454f1a1dac88ede32ed28174f893d` |
| 11 | `theorem` | [contDiffOn_of_continuousOn_differentiableOn_deriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiffon-of-continuouson-differentiableon-deriv.md) | 125 | `result-track:de97f58b32a2b592e2cd2954a0e352cc91196efda7fbb5518b47a5751e2a5607` |
| 12 | `theorem` | [contDiffOn_of_differentiableOn_deriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiffon-of-differentiableon-deriv.md) | 138 | `result-track:4456f47992d0e287e4019c820c6d2e80628abb927bcc40bbc6c2307c9f3812a7` |
| 13 | `theorem` | [ContDiffOn.continuousOn_iteratedDerivWithin](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiffon-continuouson-iteratedderivwithin.md) | 146 | `result-track:253fc574c801ff901d42bd08ec0335cdfa68c51ece4cef17648014c2b32c7efc` |
| 14 | `theorem` | [ContDiffWithinAt.differentiableWithinAt_iteratedDerivWithin](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiffwithinat-differentiablewithinat-iteratedderivwithin.md) | 152 | `result-track:4b59c7fb1093d2a83ed798040fd66943a9d52acee16a352ba77e2bcf8508786e` |
| 15 | `theorem` | [ContDiffOn.differentiableOn_iteratedDerivWithin](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiffon-differentiableon-iteratedderivwithin.md) | 161 | `result-track:f29973758a0a3142e0dd2245356f99295683f393fa160a55da09c89715f58e4c` |
| 16 | `theorem` | [contDiffOn_iff_continuousOn_differentiableOn_deriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiffon-iff-continuouson-differentiableon-deriv.md) | 168 | `result-track:8957eece9273d8d9ea19c38d509a6719ea56953a1d983b047b5d2d74f74b0370` |
| 17 | `theorem` | [contDiffOn_nat_iff_continuousOn_differentiableOn_deriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiffon-nat-iff-continuouson-differentiableon-deriv.md) | 176 | `result-track:7b8f67dc0dfe9c13f577f57e86eebae11dd2287c7e91f2fab69f1778c0c25e34` |
| 18 | `theorem` | [iteratedDerivWithin_succ](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderivwithin-succ-source-edition-2.md) | 185 | `result-track:9def6888b78547b8da08ee1bdef2f6c5409067df6a8f3b57aeb528322530fb28` |
| 19 | `theorem` | [iteratedDerivWithin_eq_iterate](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderivwithin-eq-iterate.md) | 200 | `result-track:47f888c49febaab28bc8e171b529c097ab6e726e6285e1757f3cf62f35114c07` |
| 20 | `theorem` | [iteratedDerivWithin_succ'](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderivwithin-succ.md) | 210 | `result-track:3e484c327a37d08bad1a677f0f3887275479bd8f96cfd798b1ec15a51886e909` |
| 21 | `theorem` | [iteratedDeriv_eq_iteratedFDeriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderiv-eq-iteratedfderiv.md) | 217 | `result-track:a95a4f4e0fb1f0b4428c51f56da57cf69fe1a09e76c1f15f4644c9d052276fb1` |
| 22 | `theorem` | [iteratedDeriv_eq_equiv_comp](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderiv-eq-equiv-comp.md) | 223 | `result-track:8bc6c0b3942226ddc6b5e89bbb95af53ee6c8989a2a8621bad813c9d9c80edaa` |
| 23 | `theorem` | [iteratedFDeriv_eq_equiv_comp](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedfderiv-eq-equiv-comp.md) | 229 | `result-track:902886450a5eace26fad9a92d90fb845665b970db6b53ef439b01f3369cbac10` |
| 24 | `theorem` | [iteratedFDeriv_apply_eq_iteratedDeriv_mul_prod](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedfderiv-apply-eq-iteratedderiv-mul-prod.md) | 236 | `result-track:7ce35de1eac581748e6cfbfee43ec3015c7790aa912946ca17f4e80d90f3aa26` |
| 25 | `theorem` | [norm_iteratedFDeriv_eq_norm_iteratedDeriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/norm-iteratedfderiv-eq-norm-iteratedderiv.md) | 240 | `result-track:491ffb2b8e97d3fbfe988d3cc9865dc4d576e790133a345f60d7c47f9dc312d6` |
| 26 | `theorem` | [iteratedDeriv_zero](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderiv-zero.md) | 245 | `result-track:ee9d24f4214127f412525feb134fefccff3dc4407baab7004fd8ff914d7ae229` |
| 27 | `theorem` | [iteratedDeriv_one](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderiv-one.md) | 248 | `result-track:521aa3b0fca1bfb73c1efa34c6cefd85356baab96ecb67925c49beff97659a7b` |
| 28 | `theorem` | [contDiff_iff_iteratedDeriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiff-iff-iteratedderiv.md) | 252 | `result-track:c5c114fd591961e5f70d428b723aecc961f1c98ddec671e2011cdd4f8d9f14e1` |
| 29 | `theorem` | [contDiff_nat_iff_iteratedDeriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiff-nat-iff-iteratedderiv.md) | 260 | `result-track:fc83fb56288a8fa099bd461045c652f04a70a351db6f7c3c61a1258e51aa1bf7` |
| 30 | `theorem` | [contDiff_of_differentiable_iteratedDeriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiff-of-differentiable-iteratedderiv.md) | 271 | `result-track:fb6e704a597b4c2767e3a6bab5acc00c50ebc2ceae9f81242859b4200edb61b0` |
| 31 | `theorem` | [ContDiff.continuous_iteratedDeriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiff-continuous-iteratedderiv.md) | 275 | `result-track:01c77febfcd85f3e9fcd5d3dbfc0c43bf41841c75b63d0089e9959bddda3fa1a` |
| 32 | `theorem` | [ContDiff.continuous_iteratedDeriv'](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiff-continuous-iteratedderiv-source-edition-2.md) | 280 | `result-track:8d8a7723080bc66f4e9198d75b32b5c4e22d438bb348f518e7ba5dcce950ff1c` |
| 33 | `theorem` | [ContDiff.differentiable_iteratedDeriv](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiff-differentiable-iteratedderiv-source-edition-2.md) | 284 | `result-track:bb30190deaa9ec697d2c96c97c4f6d296bf600aa4690adb71fa671d984cbd96e` |
| 34 | `theorem` | [ContDiff.differentiable_iteratedDeriv'](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/contdiff-differentiable-iteratedderiv.md) | 290 | `result-track:77306b8e736679696c0a6f6cb26b9a07698e006a3ed8ef4eaee5aac85e6ace0c` |
| 35 | `theorem` | [iteratedDeriv_succ](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderiv-succ.md) | 296 | `result-track:4e4d2e6b88bd0f8cf68ae78300cd9f4ec2d286b7b235f24abcdfa499c9d38898` |
| 36 | `theorem` | [iteratedDeriv_eq_iterate](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderiv-eq-iterate.md) | 303 | `result-track:2f3a71a5d3fcc4d0c1407904fff0147443ebe766fd66d4141e6060a376bd4a81` |
| 37 | `theorem` | [iteratedDeriv_succ'](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/iteratedderiv-succ-source-edition-2.md) | 311 | `result-track:cda316b4ba3ea9dd35571b30fee5896e6ebf78761e1a74ec12d972d6f4a7432b` |
| 38 | `lemma` | [AnalyticAt.hasFPowerSeriesAt](../../../../RealFunctions/IteratedDerivDefsNamespaced.lean/declarations/analyticat-hasfpowerseriesat.md) | 314 | `result-track:8d837c59a2af35eb4fdb045804132fef04448419f2fe58baa9426e17faf5576c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7c2dc8d019d708671f12530051d11336f7f059994aef8aac2918360a62ac4a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant7fc597a5c51fd677a314e7d511d54cb16c0b1d9ba21ff92b2bb522256d83c1ac.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant7fc597a5c51fd677a314e7d511d54cb16c0b1d9ba21ff92b2bb522256d83c1ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
