# Verification target: Expr Sin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bebe49a751e3b8bebc58fb10136b82b3825c65a4",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ExprSin.lean/index.md) · [Full source](../../../../RealFunctions/ExprSin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bebe49a751e3b8bebc58fb10136b82b3825c65a4`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Functions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sin](../../../../RealFunctions/ExprSin.lean/declarations/sin.md) | 44 | `declaration-track:88250aadb689129f579b0478c7580a07776e43aa3c23dfdabed193862c206fd5` |
| 2 | `def` | [cos](../../../../RealFunctions/ExprSin.lean/declarations/cos.md) | 58 | `declaration-track:e3b767a6cbeb064b81ae112f02aadaae1357c7f6320f82503a724df0d73ab2e8` |
| 3 | `def` | [exp](../../../../RealFunctions/ExprSin.lean/declarations/exp.md) | 69 | `declaration-track:7b56e52e7dbee57751fcec1908d0f389e2b384cf0367eea4ba01951e2f6aa6e6` |
| 4 | `def` | [sinh](../../../../RealFunctions/ExprSin.lean/declarations/sinh.md) | 80 | `declaration-track:56a837e59389e63da1e18f232c1ce321cc9c3f4970526371944b95f2d741bb98` |
| 5 | `def` | [cosh](../../../../RealFunctions/ExprSin.lean/declarations/cosh.md) | 91 | `declaration-track:a46c97644948e966d3d5ca1336d81211572ad25ad2c62b094272637049030d51` |
| 6 | `def` | [tanh](../../../../RealFunctions/ExprSin.lean/declarations/tanh.md) | 102 | `declaration-track:c3e729cf3cd681e340c67830273c5c277cbd75188fa95b3a4ffa982738d4f342` |
| 7 | `def` | [atan](../../../../RealFunctions/ExprSin.lean/declarations/atan.md) | 113 | `declaration-track:075f7fd4ce691aa43da13716f8ca735d626a58b271358dc0b36645eae7af741f` |
| 8 | `def` | [atanh](../../../../RealFunctions/ExprSin.lean/declarations/atanh-source-edition-2.md) | 124 | `declaration-track:542b4dc8dda66a05244434aa32381aaf9f5ea14e2d86f47f8e0fce9771828fa1` |
| 9 | `def` | [asinh](../../../../RealFunctions/ExprSin.lean/declarations/asinh.md) | 135 | `declaration-track:d120948e45ade306196f2a4a356c55216860543a0a49d2e1bbbb9693437bc04b` |
| 10 | `def` | [sinc](../../../../RealFunctions/ExprSin.lean/declarations/sinc.md) | 146 | `declaration-track:264ad2de77b1bdd4414735932067545f3e59762f4b0705e038a85a591d7d909a` |
| 11 | `def` | [erf](../../../../RealFunctions/ExprSin.lean/declarations/erf-source-edition-2.md) | 157 | `declaration-track:e46b7e5a8874b59909ffef192398a4df6e175c6203398f8eccabd1440b523ae6` |
| 12 | `def` | [log?](../../../../RealFunctions/ExprSin.lean/declarations/log.md) | 169 | `declaration-track:045518d7a0190f0bb0d1554f60d30e59b01321fae5a02237c4fcc8ac3d4bfd95` |
| 13 | `def` | [sqrt?](../../../../RealFunctions/ExprSin.lean/declarations/sqrt.md) | 181 | `declaration-track:57c9ddac3aab41769bdd7111e4ac0b9dd58e22e536ec2c47f6d7d7287a94ae36` |
| 14 | `def` | [atan?](../../../../RealFunctions/ExprSin.lean/declarations/atan-source-edition-2.md) | 190 | `declaration-track:242c8bd1680741a9bfe713c9d1a484f69e2c9eda998b0a509847190ed75d173c` |
| 15 | `def` | [erf?](../../../../RealFunctions/ExprSin.lean/declarations/erf.md) | 199 | `declaration-track:70c8eff48d72d6766656c8a8e84a1dd665a53031bd96c41b0c5bb3af86dcb806` |
| 16 | `def` | [atanhSafe](../../../../RealFunctions/ExprSin.lean/declarations/atanhsafe.md) | 207 | `declaration-track:815f480989968989b2d3495b9afe077eea13f1de78d91a1714a710c4160a286c` |
| 17 | `theorem` | [abs_le_interval_radius](../../../../RealFunctions/ExprSin.lean/declarations/abs-le-interval-radius.md) | 211 | `result-track:3595559fc53c01a52270e66e269fcc91010ba8ea2dcc09ada45b00af0137bca7` |
| 18 | `theorem` | [abs_lt_one_of_atanhSafe](../../../../RealFunctions/ExprSin.lean/declarations/abs-lt-one-of-atanhsafe.md) | 228 | `result-track:b940b967ce280fb3359572652a86a31776818755c145afe8163787184cdaafef` |
| 19 | `def` | [atanh?](../../../../RealFunctions/ExprSin.lean/declarations/atanh.md) | 251 | `declaration-track:114d300b9abee506183389e929c8156e19cba2fca7ff7570a9b68a68ea1cf342` |
| 20 | `def` | [fromExpr](../../../../RealFunctions/ExprSin.lean/declarations/fromexpr.md) | 263 | `declaration-track:359ccf4839e16017eabe5b47ea974af27f787f84c6d900a90e74210395751618` |
| 21 | `def` | [fromExpr?](../../../../RealFunctions/ExprSin.lean/declarations/fromexpr-source-edition-2.md) | 304 | `declaration-track:83e3fa2df9e3ca509a163eb05200b7cd8069c3eb0214a80ae2dfaf28b8d744f3` |
| 22 | `theorem` | [fromExpr?_center](../../../../RealFunctions/ExprSin.lean/declarations/fromexpr-center.md) | 374 | `result-track:da63b1d92a27aef311e7fbb5c87c61e16bfa347c0b63507f19cae4dd76b0f6ae` |
| 23 | `theorem` | [add_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/add-evalset-correct.md) | 549 | `result-track:0ccd88e8edeea7417d097b5eb55a3aa7ea20aa99f5de20fdfe18dd76d62b8150` |
| 24 | `theorem` | [neg_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/neg-evalset-correct.md) | 585 | `result-track:2e8a580125524c82bc43b560324a459668d0800ea2f90b75b1761dc530eed97f` |
| 25 | `theorem` | [sin_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/sin-evalset-correct.md) | 600 | `result-track:3320579e1fe7b537062b0ead8db0327d2fb16855301b1d1b825d1c292e17bc1f` |
| 26 | `theorem` | [cos_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/cos-evalset-correct.md) | 618 | `result-track:a5c615b4120ad9d02dc33775644d821781d2a56c41f538ce7a73bca337d08fa0` |
| 27 | `theorem` | [exp_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/exp-evalset-correct.md) | 635 | `result-track:08a10137634615a41944c04260de4c9c28e6f1385f1b8dd43b67e98a136d972f` |
| 28 | `theorem` | [sinh_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/sinh-evalset-correct.md) | 652 | `result-track:4d79529c75e0d72193bd5e63955ff53d712b3956d7858d20dbd21b62a612ef81` |
| 29 | `theorem` | [cosh_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/cosh-evalset-correct.md) | 669 | `result-track:f2eba10ef627ca0b9b13a9d2351403ee51440233ebb7083195bae67970b067c6` |
| 30 | `theorem` | [asinh_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/asinh-evalset-correct.md) | 686 | `result-track:95d4353fa2e67abbecc79f04b1a0aba55565d55471a7c54dd31c3af7bd236d03` |
| 31 | `theorem` | [sinc_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/sinc-evalset-correct.md) | 703 | `result-track:eb509a1848dbaf3896e6f272b49ba04148de15a89cc72ad2d165ae9782173724` |
| 32 | `theorem` | [tanh_mem_Icc](../../../../RealFunctions/ExprSin.lean/declarations/tanh-mem-icc.md) | 720 | `result-track:ee584eea0ea4ba0adf1b5b0be7f755f94d44e6b83a2ab7c9a780e51f809e83cc` |
| 33 | `theorem` | [bound_contains_neg_one_one](../../../../RealFunctions/ExprSin.lean/declarations/bound-contains-neg-one-one.md) | 732 | `result-track:00ca1486e223061a7b2a51fe0502cebe79a0529ff85eb1e346ef89bd18e349ff` |
| 34 | `theorem` | [tanh_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/tanh-evalset-correct.md) | 752 | `result-track:d744c3469285a28dfb66f432486be88f36bea121132063d5c8c78106ee8e4b59` |
| 35 | `theorem` | [atanh_evalSet_correct'](../../../../RealFunctions/ExprSin.lean/declarations/atanh-evalset-correct.md) | 795 | `result-track:8d2bf4e1626599be67789726b7325c6c0a80caff40d9a1ccf43a71187a20c8ec` |
| 36 | `theorem` | [fromExpr?_domain](../../../../RealFunctions/ExprSin.lean/declarations/fromexpr-domain.md) | 829 | `result-track:e15521fc075f1077fbb175ff706e2c957d20181b54ccf1595a030ede01bc2fe0` |
| 37 | `theorem` | [fromExpr_evalSet_correct](../../../../RealFunctions/ExprSin.lean/declarations/fromexpr-evalset-correct.md) | 983 | `result-track:3d01fbae1c523b41377b583fda80e304ed03e233c505a9c5bb0d1d12c3304a50` |
| 38 | `theorem` | [fromExpr_correct](../../../../RealFunctions/ExprSin.lean/declarations/fromexpr-correct.md) | 1256 | `result-track:3adf5d30491d91914e9ebb7d13e8c0d284ab85bb35a74e3d16205e730ff6e5d7` |
| 39 | `def` | [expIntervalRefined](../../../../RealFunctions/ExprSin.lean/declarations/expintervalrefined.md) | 1270 | `declaration-track:4f660285019def4b99c638d9077df2297c36104ec5691cfab145170c6f11d99d` |
| 40 | `theorem` | [mem_expIntervalRefined](../../../../RealFunctions/ExprSin.lean/declarations/mem-expintervalrefined.md) | 1278 | `result-track:ae2ec5f9354057bae02f2a25fbd36c54e50a100ce652af0951ce7e9cbcd08bef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c57b672437c00310b8e6be92994188f76ce6fb1ca50dfd1ecfed9897a67e1569 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/Expr/Variant41cdde909939f3f327fd28df6a09edd5b73d847606fe682dd12fdc4d221313a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
