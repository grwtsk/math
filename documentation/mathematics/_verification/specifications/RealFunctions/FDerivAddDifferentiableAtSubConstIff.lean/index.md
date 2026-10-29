# Verification target: FDeriv Add Differentiable At Sub Const Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "635570e4236c95ccebe3c69ceed70377058a8f1f",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/index.md) · [Full source](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `635570e4236c95ccebe3c69ceed70377058a8f1f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Comp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictFDerivAt.const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasstrictfderivat-const-smul.md) | 63 | `result-track:f77b322c2d014682e4638e3d5dccf05de551d74fa413ec55c85d1a578c9127a3` |
| 2 | `theorem` | [HasFDerivAtFilter.const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivatfilter-const-smul.md) | 68 | `result-track:7e0684e58904dcbbd19ad8aaf874a3a9d51445c1e979e73e15c8bdfc3bc24138` |
| 3 | `theorem` | [HasFDerivWithinAt.const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivwithinat-const-smul.md) | 73 | `result-track:bc169d8253f473b595794a3300adc3d8f08211ca256b03365a3fadeea08a75a6` |
| 4 | `theorem` | [HasFDerivAt.const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivat-const-smul.md) | 78 | `result-track:95c70d8000e19b1889b7a80ca6e3600bc46a5520662b1e0f914f857bc9a6519a` |
| 5 | `theorem` | [DifferentiableWithinAt.const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-const-smul.md) | 83 | `result-track:6d24a0b8f83774ce148d385eefac6cf98562728fc91be51df365b98f3d399bbd` |
| 6 | `theorem` | [DifferentiableAt.const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-const-smul.md) | 88 | `result-track:25070037b7b323a088c118e89c2dd1bbde31e067ee36bf58338350b1efb53168` |
| 7 | `theorem` | [DifferentiableOn.const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-const-smul.md) | 93 | `result-track:1ed9cfe6957c68a53f45194b6e85138f08fd7395005b617edcae6ada3bd43de6` |
| 8 | `theorem` | [Differentiable.const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-const-smul.md) | 97 | `result-track:dbedd910316d93676a4b2409ae238269f00849b0d3d1c1e6fd9cc1444e60a549` |
| 9 | `theorem` | [fderivWithin_const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderivwithin-const-smul.md) | 101 | `result-track:c45b7ffa4e4532f9a24d1d6aba9a4b5882ad4aa24e450dd7000d3d87753ee9e7` |
| 10 | `theorem` | [fderiv_const_smul](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderiv-const-smul.md) | 107 | `result-track:e041babc6d8582a0d24f8ce61c681b3d4dd84fa255384a3978bc036ee8c3fcbe` |
| 11 | `theorem` | [HasStrictFDerivAt.add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasstrictfderivat-add.md) | 119 | `result-track:25da1c5d957b91315b195b7adc214c72af3b787918e09451abfdf0b4877a62eb` |
| 12 | `theorem` | [HasFDerivAtFilter.add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivatfilter-add.md) | 126 | `result-track:713b6c1de8fbe5c91249ffb37a540196eebddd1d10d86bef05af54e8b93c47f3` |
| 13 | `theorem` | [HasFDerivWithinAt.add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivwithinat-add.md) | 133 | `result-track:bdce685cfbc372d3d03671cb6705a2aedb116f960f9f154e1640de9b55e86dc3` |
| 14 | `theorem` | [HasFDerivAt.add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivat-add.md) | 138 | `result-track:d96c4b42284d6849af08d6bf99fc43f1a8669bff2634bca1bb2b1f49600fcedf` |
| 15 | `theorem` | [DifferentiableWithinAt.add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-add.md) | 143 | `result-track:04edbd4c58dc0bd8fc1d00de7dafe1edfa5b06b65cc8d9dcb60fba3d1aaaa769` |
| 16 | `theorem` | [DifferentiableAt.add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-add.md) | 149 | `result-track:50450951a0ffd79f037042b3be56fd6afbc2b9cdd79e660ec88337fb353e2821` |
| 17 | `theorem` | [DifferentiableOn.add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-add.md) | 154 | `result-track:e17ac6eba196d78b4c4b5de8796f2ed0247a08f60066fa045426882ed8bb7703` |
| 18 | `theorem` | [Differentiable.add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-add.md) | 159 | `result-track:f6315e95fddb3318d5ad0098decfdfb92136ca1301b6c941e74bd2952b31b989` |
| 19 | `theorem` | [fderivWithin_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderivwithin-add.md) | 163 | `result-track:af61b20fd8fc4fd4ba1a13c387890c8ddc909eba18c7464fa0783c2694dbc0b0` |
| 20 | `theorem` | [fderiv_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderiv-add.md) | 169 | `result-track:8b9993a9da7474cc1ec0c56699a04557b87f7bd9e31aa8770a63889aa2063cdf` |
| 21 | `theorem` | [HasStrictFDerivAt.add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasstrictfderivat-add-const.md) | 174 | `result-track:f3fcc4a309c6a4b5f8ec57ea9d6662f04bbd0c1d420d5786f9ca7b3054cb2931` |
| 22 | `theorem` | [HasFDerivAtFilter.add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivatfilter-add-const.md) | 179 | `result-track:d3f9cc56e1c077a37b6b7d98812ab3cfa7750d9e63a482392e135f203d067a3c` |
| 23 | `theorem` | [HasFDerivWithinAt.add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivwithinat-add-const.md) | 184 | `result-track:15b704f90ead34e065e29c8da9eed1d12e90e1ea0053b64dd3d6a7ecaf94a19a` |
| 24 | `theorem` | [HasFDerivAt.add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivat-add-const.md) | 189 | `result-track:5651f5cbdcc4eb4d54602eb88b741d209c9cc9cb263b70cc98095d9b4e554930` |
| 25 | `theorem` | [DifferentiableWithinAt.add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-add-const.md) | 194 | `result-track:c56503a0626fd19a9f003d80c7deb662c700c219a4c7bde753ed93d5c4687b06` |
| 26 | `theorem` | [differentiableWithinAt_add_const_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-add-const-iff.md) | 200 | `result-track:d14054fb0bec0a84e5cfa1dd99f09e0df499142cd7b52b11a41bb740c65a3d79` |
| 27 | `theorem` | [DifferentiableAt.add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-add-const.md) | 205 | `result-track:79084a083a2846e413545cecc7c99941cd60877e72fa262e581dac3c897c3772` |
| 28 | `theorem` | [differentiableAt_add_const_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-add-const-iff.md) | 211 | `result-track:93cc88f53dfc0d370f31b1a03d4e78f07e5df1e3b7b5dc6316ca3e984e6e3c7e` |
| 29 | `theorem` | [DifferentiableOn.add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-add-const.md) | 216 | `result-track:b1e1e845c3a1b8e9e5d4d76741f76f7e8349ed3d0f0a0f8801ddc8f4311b765b` |
| 30 | `theorem` | [differentiableOn_add_const_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-add-const-iff.md) | 221 | `result-track:73093d326bf92189d444744726dc0e00e6b51736772ba0c23167ff4662955d85` |
| 31 | `theorem` | [Differentiable.add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-add-const.md) | 226 | `result-track:85e5e0ca1d292a8fd00d4cf96967e171019cb2a312e4bc81866cc9be8206866b` |
| 32 | `theorem` | [differentiable_add_const_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-add-const-iff.md) | 231 | `result-track:51229bea7035ce210ea0bc3bba3dfdd7e1ca530e32be2a31785eb919ae70595b` |
| 33 | `theorem` | [fderivWithin_add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderivwithin-add-const.md) | 236 | `result-track:14b0697bf294b01c12502561de5eca80a9a52b42ff156059032b6f71c1752671` |
| 34 | `theorem` | [fderiv_add_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderiv-add-const.md) | 245 | `result-track:a6b5176ee6891951071053cb3d9acc70a92b9721ebe895a8224e3cf02bb6c789` |
| 35 | `theorem` | [HasStrictFDerivAt.const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasstrictfderivat-const-add.md) | 249 | `result-track:c9b4c84c3fdf1dc8a09e5304e0e18dfafeb34d648d9b371bf0e7c2bdea32fa3a` |
| 36 | `theorem` | [HasFDerivAtFilter.const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivatfilter-const-add.md) | 254 | `result-track:d23018a43a062227c40c2bc04d380c0ce0d1ca83abd23aa35d3247027d54eb8f` |
| 37 | `theorem` | [HasFDerivWithinAt.const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivwithinat-const-add.md) | 259 | `result-track:e32f4f0152f3b707fae7790f8a5d5ca2802e3116c1b556d6ee841333503b36f2` |
| 38 | `theorem` | [HasFDerivAt.const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivat-const-add.md) | 264 | `result-track:97031586129ceed4bdd0d9a77d6d2def67155dd716540f51b729ca998e26ff5b` |
| 39 | `theorem` | [DifferentiableWithinAt.const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-const-add.md) | 269 | `result-track:e36ace9abc2c516527dbc2c46dd0a56e98a1fed4dd970a096618429bb3eb234f` |
| 40 | `theorem` | [differentiableWithinAt_const_add_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-const-add-iff.md) | 275 | `result-track:ca3b46f18da04cb1074af2589ecc6667e326c9aabd61a9c0210b41cb30dcf1ba` |
| 41 | `theorem` | [DifferentiableAt.const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-const-add.md) | 280 | `result-track:827e6216cece36e562931de5af98eb7bcc8bb8e2d271eebd47d069f828f70717` |
| 42 | `theorem` | [differentiableAt_const_add_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-const-add-iff.md) | 286 | `result-track:90cd22dad347384d9cc532bac9a5a5e745a891a3fb9ec314dc6786f3c8bd25cd` |
| 43 | `theorem` | [DifferentiableOn.const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-const-add.md) | 291 | `result-track:9bebcac0aaa191757cf0c2c1da5cb51c1ef33d07b2d315fc771f268284b0181a` |
| 44 | `theorem` | [differentiableOn_const_add_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-const-add-iff.md) | 296 | `result-track:0269712cccd5f77d144087c6f11e39862911f50032b916a850a702ff31acacf6` |
| 45 | `theorem` | [Differentiable.const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-const-add.md) | 301 | `result-track:d593b91514b427e0a0ca85ca6d4a08c9a554a6d20dde23a76bdd5438719703b2` |
| 46 | `theorem` | [differentiable_const_add_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-const-add-iff.md) | 306 | `result-track:13a29a176d52fe08298961a5bbc8e8494fed04bbd4a844799a95da264d12a392` |
| 47 | `theorem` | [fderivWithin_const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderivwithin-const-add.md) | 311 | `result-track:510dbd862d65d37a4d6eeae7a7a23416a7ef830f23fdc837026ddfa01d145b0b` |
| 48 | `theorem` | [fderiv_const_add](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderiv-const-add.md) | 316 | `result-track:a184cf308c00d73e78dde8ae81732f4996c0461976ae9ce2d59fa0f76214ac9d` |
| 49 | `theorem` | [HasStrictFDerivAt.sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasstrictfderivat-sum.md) | 331 | `result-track:020ec25778a9367e73e3dbdea84aea5b5cdd4cf0ad66807361ad2d7abcd5555c` |
| 50 | `theorem` | [HasFDerivAtFilter.sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivatfilter-sum.md) | 338 | `result-track:8f4043102112896ed78cae8dda149e730aa18f3bea6649e2e960bf86d524da25` |
| 51 | `theorem` | [HasFDerivWithinAt.sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivwithinat-sum.md) | 345 | `result-track:50c5bd3fefaa804b97cb34b3b493558a6b695cd63666393168729b19d90c4ae3` |
| 52 | `theorem` | [HasFDerivAt.sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivat-sum.md) | 350 | `result-track:1b91d2012e32735b2cdb89990a2a6ac4531de2c09c0b31b3bcca4b70e213a7ba` |
| 53 | `theorem` | [DifferentiableWithinAt.sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-sum.md) | 355 | `result-track:2af0a7b48efa579f98ed14b43f9805a54f70e121bbded11e7ee0f9a98c17212b` |
| 54 | `theorem` | [DifferentiableAt.sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-sum.md) | 362 | `result-track:68bb5a869cc8a8ff7f472f35399964213c14bdbeb1901cd4de123b246025cce9` |
| 55 | `theorem` | [DifferentiableOn.sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-sum.md) | 367 | `result-track:10d6508d83eebe5728781f78af0f25f83df37a14ef379c4228d5b4ab0e1dcd6d` |
| 56 | `theorem` | [Differentiable.sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-sum.md) | 373 | `result-track:2ce892fa2f320a306966ea2c4914e79db2671a70a89a0291cb866372b8ca60b3` |
| 57 | `theorem` | [fderivWithin_sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderivwithin-sum.md) | 377 | `result-track:93359b9feac07dc8648f40b5e22ae072f2b181090fa7ed77c8e8c4020e143c0c` |
| 58 | `theorem` | [fderiv_sum](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderiv-sum.md) | 383 | `result-track:9871ca8286943e68827722b630d9798261ad2de80c56f91ab021bbf75d6e902a` |
| 59 | `theorem` | [HasStrictFDerivAt.neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasstrictfderivat-neg.md) | 395 | `result-track:d031bad98c4d1e39a44d6ea46383200415b5e05526586b83c1f5bc52c87ccdb7` |
| 60 | `theorem` | [HasFDerivAtFilter.neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivatfilter-neg.md) | 400 | `result-track:d2879dbfa53e7f3e33a966ff993d9b32a1dab1e6e6658bd2516863c07fce083a` |
| 61 | `theorem` | [HasFDerivWithinAt.neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivwithinat-neg.md) | 405 | `result-track:a0b544f3e93d7e4d4182e94d16145186129b42abec701079775b19aa3e4d2557` |
| 62 | `theorem` | [HasFDerivAt.neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivat-neg.md) | 410 | `result-track:ba2c25c03cd4e9b092a44269799fcc5d4a4a6ffc2a8708f5db00e3e5fc3d369e` |
| 63 | `theorem` | [DifferentiableWithinAt.neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-neg.md) | 414 | `result-track:0a62f5b41120aac48471fae2ba51ca79285eaea7872685348536ce80c0e6e6f1` |
| 64 | `theorem` | [differentiableWithinAt_neg_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-neg-iff.md) | 420 | `result-track:770779c1f21cd278b4511b342a34e29049442f289927472be5529f1cd9f5a6e0` |
| 65 | `theorem` | [DifferentiableAt.neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-neg.md) | 425 | `result-track:fe6ad39e0bd783571bbb6520ec3c3aa82d618b3c1a6c2d030b8765fde1de1dd7` |
| 66 | `theorem` | [differentiableAt_neg_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-neg-iff.md) | 430 | `result-track:df9d09d9ee8b1aa3ae0fa9b0eef53020f121cbe2e8c909450ff0e84f13639a3a` |
| 67 | `theorem` | [DifferentiableOn.neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-neg.md) | 434 | `result-track:b6e259033219f7b1d299ec7400dbf00bfb0a39b74bd32f0c8d7b233880a6b43c` |
| 68 | `theorem` | [differentiableOn_neg_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-neg-iff.md) | 439 | `result-track:e3f838c7f17f16ab80ca0e32d825b8f98946247d6df874e41de17a35c02e160f` |
| 69 | `theorem` | [Differentiable.neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-neg.md) | 443 | `result-track:20e448c6a8741bc3517717960dd0ddc5709d8fe28ead117d865233968ab9af51` |
| 70 | `theorem` | [differentiable_neg_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-neg-iff.md) | 448 | `result-track:9dbf908222d3fbc1a813777a489bf6b031d682223182c86cff5fe8bfa37d518f` |
| 71 | `theorem` | [fderivWithin_neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderivwithin-neg.md) | 452 | `result-track:a6dbc05026b31a789aa51a66ea74f8e6880dbb657124b69142eac46f82ab881e` |
| 72 | `theorem` | [fderiv_neg](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderiv-neg.md) | 462 | `result-track:eec53b0f60c806bb2e60882bb2012a4f7866648fc504709f2675b6941fb68296` |
| 73 | `theorem` | [HasStrictFDerivAt.sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasstrictfderivat-sub.md) | 473 | `result-track:18d858163155d0f302913851aacfc971b2a3c5a98a20e5599e81a259c888bc74` |
| 74 | `theorem` | [HasFDerivAtFilter.sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivatfilter-sub.md) | 478 | `result-track:5226fff5fdcf8d8704fd11facde7c94b1c663a8041c842c83ae5fae72b96e2af` |
| 75 | `theorem` | [HasFDerivWithinAt.sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivwithinat-sub.md) | 483 | `result-track:260cd7481646f60bf942f7c4879144292f37a4904eb34f91912a86d0a8ffabbf` |
| 76 | `theorem` | [HasFDerivAt.sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivat-sub.md) | 488 | `result-track:a1173ea5db8b97bc25d191d6d7d2a1cf919818985f2e009875cf2c6b6a77fb05` |
| 77 | `theorem` | [DifferentiableWithinAt.sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-sub.md) | 493 | `result-track:f578e40045bf11e4c1b1f1e8137ea1dab6fafdd792c3c89e0afed072c0039755` |
| 78 | `theorem` | [DifferentiableAt.sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-sub.md) | 499 | `result-track:e3389496afecb81abc47f250d34c6618de71ae8e9b58b3a37eebecc910133ba5` |
| 79 | `theorem` | [DifferentiableOn.sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-sub.md) | 504 | `result-track:5297eb8931dabcaad4d2314cf97f021a1d81373ed8ff270e63ac81e559652748` |
| 80 | `theorem` | [Differentiable.sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-sub.md) | 509 | `result-track:ca9ee763543d7f34839dc8f4c2615964f219768afe1337aa444188934efada80` |
| 81 | `theorem` | [fderivWithin_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderivwithin-sub.md) | 513 | `result-track:f4e2e9f7915748637d83f3b1f8af07583a2cca530b1c4afba3ad5b7d11c2d529` |
| 82 | `theorem` | [fderiv_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderiv-sub.md) | 519 | `result-track:9437ce4fde0bddccb7a3462d77876939561cda971e94543a421f90767412b122` |
| 83 | `theorem` | [HasStrictFDerivAt.sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasstrictfderivat-sub-const.md) | 524 | `result-track:8068d2fe1929c6995d22426ec574bd96f8d93d008ad7691c070e11f5bcf69335` |
| 84 | `theorem` | [HasFDerivAtFilter.sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivatfilter-sub-const.md) | 529 | `result-track:fce066f270001f1c3494823dd31ceaedb3da0b2835f386af0aeadd7cecd5ba01` |
| 85 | `theorem` | [HasFDerivWithinAt.sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivwithinat-sub-const.md) | 534 | `result-track:9cd4de9b34a03dc0eb455083d944e43d9cc0f7c7f1fd184984558c2997b18c32` |
| 86 | `theorem` | [HasFDerivAt.sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivat-sub-const.md) | 539 | `result-track:6447f0903d425806ef605eb9c54539ceb60f32a860e92cb6e3409bddfd3408f0` |
| 87 | `theorem` | [DifferentiableWithinAt.sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-sub-const.md) | 544 | `result-track:4e6cda98402bad3ffd9f9a15a9aa1307fe5e7384f95ac40c625e9ffd20cc6952` |
| 88 | `theorem` | [differentiableWithinAt_sub_const_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-sub-const-iff.md) | 550 | `result-track:66abb2fd5c75908b7d48018643bfde0ab3d662f3ebad101fadbba7a3c1450bbb` |
| 89 | `theorem` | [DifferentiableAt.sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-sub-const.md) | 555 | `result-track:9c2b4ae28106b6645da30e2f20af2878ba8e4d8b9bad23b2b75801236d8a8f5b` |
| 90 | `theorem` | [differentiableAt_sub_const_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-sub-const-iff.md) | 561 | `result-track:bac3f1177f55cb63852f97d213f8d2849fca967621a13aeab5f163aaa05e9d4e` |
| 91 | `theorem` | [DifferentiableOn.sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-sub-const.md) | 566 | `result-track:7652052769818ed1b8922820dd5ae8c1b0e258f0772b072cdaa174a4220b5f7c` |
| 92 | `theorem` | [differentiableOn_sub_const_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-sub-const-iff.md) | 571 | `result-track:ea7394e16946892f54f149794e0a70692666d68da66566ce9765ae2f28d6016d` |
| 93 | `theorem` | [Differentiable.sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-sub-const.md) | 576 | `result-track:ba9d3bb5c639f20312aa6a3d3717823b0ab8a2e439462cbd387cb7b331b3df3a` |
| 94 | `theorem` | [differentiable_sub_const_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-sub-const-iff.md) | 581 | `result-track:1a22bb7d51049c5b5eb18a41307c2bb065271166f875c1afcd9ad7f048f646d3` |
| 95 | `theorem` | [fderivWithin_sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderivwithin-sub-const.md) | 586 | `result-track:306ae09620826991a0ccbbbb5b8559864a58f1ebf0857f808d6cf1d524e29b0f` |
| 96 | `theorem` | [fderiv_sub_const](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderiv-sub-const.md) | 591 | `result-track:1f9352cc9658ee6a17eeb62613f119a3ecb1b6534ee0f7c395458599ac14dee7` |
| 97 | `theorem` | [HasStrictFDerivAt.const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasstrictfderivat-const-sub.md) | 595 | `result-track:6ff65575ea5ecd2f9f39df856fef2c7577c000fd6d8f1e0388773b84f0b6ae9c` |
| 98 | `theorem` | [HasFDerivAtFilter.const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivatfilter-const-sub.md) | 600 | `result-track:a1deb67314da3ca23170c5fd5647f5436ed96f6b8921a8e1630b83193f481b63` |
| 99 | `theorem` | [HasFDerivWithinAt.const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivwithinat-const-sub.md) | 605 | `result-track:16cafa7a980e9821e60e4d5e902182a0394cf5bded88aaadfb049c681f0b6a8d` |
| 100 | `theorem` | [HasFDerivAt.const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/hasfderivat-const-sub.md) | 610 | `result-track:4828c7aa539f60f98e23b6c50cf9481a6e765f1bf03c60aa634fc4a4fd9c603e` |
| 101 | `theorem` | [DifferentiableWithinAt.const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-const-sub.md) | 615 | `result-track:24549d42d138442375777f79e070e6963c53d45f3198744708ab695a1d817a84` |
| 102 | `theorem` | [differentiableWithinAt_const_sub_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiablewithinat-const-sub-iff.md) | 621 | `result-track:e287d1cba352988f4e6e2be57d2f450aba84fe5c70e2633842f7908bf8c90d2a` |
| 103 | `theorem` | [DifferentiableAt.const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-const-sub.md) | 626 | `result-track:f77490cd3b849bbdc22b90c88f2bd530513ff88717dbc4af87cda2e79dcfe361` |
| 104 | `theorem` | [differentiableAt_const_sub_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableat-const-sub-iff.md) | 632 | `result-track:99cc24cbe9749afd68583c6fafbf8f44081454fcc78b5c22eb2be0dda35713e4` |
| 105 | `theorem` | [DifferentiableOn.const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-const-sub.md) | 636 | `result-track:23348d632c1aeec3a12004d6caa7b8b0047eb1faab8f24f64c9834e7ac12b860` |
| 106 | `theorem` | [differentiableOn_const_sub_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiableon-const-sub-iff.md) | 641 | `result-track:16e822437e3eee819d0db6d68ad715b54c690086e01afde04c882e922758251f` |
| 107 | `theorem` | [Differentiable.const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-const-sub.md) | 645 | `result-track:c634e9b24ecd05730c16e5325fa8f7207292fc5d1a3c4350719e1dba7288e04a` |
| 108 | `theorem` | [differentiable_const_sub_iff](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/differentiable-const-sub-iff.md) | 650 | `result-track:66d04069a8f69ea7263528e31b61cf2a94fd23704af4549fb581ff435b5f271d` |
| 109 | `theorem` | [fderivWithin_const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderivwithin-const-sub.md) | 654 | `result-track:faaad5557bb4664c613672e4d3b570feef1d486d39d950a6da85ca147208db10` |
| 110 | `theorem` | [fderiv_const_sub](../../../../RealFunctions/FDerivAddDifferentiableAtSubConstIff.lean/declarations/fderiv-const-sub.md) | 659 | `result-track:182b85ac44d38ac379ac04535a84d18863a610ca7dbbcdf097c46d6255472b6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa5ea17bbdbf4bb2199db6ce644c71233eca09ce20127c24b4c90d23e686716a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Add/Variant87af9a58cc5eb66dc774e7aa2a7fff8ad29b2d260665e0fee53ac5882e4b6812.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
