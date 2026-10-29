# Verification target: Reduce Mod Char Namespaced Char P

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d911ea9c7296b68e0df97da2473dd9d52652a89",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d911ea9c7296b68e0df97da2473dd9d52652a89`.

Source path: `GRWTSK/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.DivMod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.PowMod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ReduceModChar.Ext` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CharP.isInt_of_mod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/charp-isint-of-mod.md) | 56 | `result-track:a57527c528a49bc72ada5cf3d16660d81d7200b7a21e280449b81ff53af595ca` |
| 2 | `lemma` | [CharP.isNat_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/charp-isnat-pow.md) | 60 | `result-track:9bed3b2703faa4feb755e8e5ac5c8c64ec5789664f4448790f0b73c23f58aba9` |
| 3 | `def` | [normBareNumeral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/normbarenumeral.md) | 69 | `declaration-track:076b2d1d1e72a90ff4c2ac4bbb7d1a6138598227ce50cca04e3502be808c90b2` |
| 4 | `def` | [normPow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/normpow.md) | 81 | `declaration-track:eef1ba6541fea42fa2f252cd27bd4cf5a48f8396d0a44da550c5aeafcad0b358` |
| 5 | `def` | [normIntNumeral'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/normintnumeral.md) | 95 | `declaration-track:a6198e22c27c8962f639f60b7198403bc5d2d5b7c2a0278442419f29efc93b43` |
| 6 | `lemma` | [CharP.intCast_eq_mod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/charp-intcast-eq-mod.md) | 101 | `result-track:a4df2f1a25c1cc40499e4a36bdd084d9c1537bc0d66f3b5f55534ff10c30258d` |
| 7 | `def` | [normIntNumeral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/normintnumeral-source-edition-2.md) | 109 | `declaration-track:c56874f437109278d24ce2578faf2be22b90877fdd08d1c318f33d703b7cb376` |
| 8 | `lemma` | [CharP.neg_eq_sub_one_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/charp-neg-eq-sub-one-mul.md) | 114 | `result-track:323805f92fcace1712312ab1d1ca8b37a956dbc9af46872f15648a5df1cdf545` |
| 9 | `def` | [normNeg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/normneg.md) | 127 | `declaration-track:7ef6a6a54c256470a68d19aa37e92d80b54f917e038af1d35cfb554091ccd787` |
| 10 | `lemma` | [CharP.neg_mul_eq_sub_one_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/charp-neg-mul-eq-sub-one-mul.md) | 143 | `result-track:1a07efd80300d0de306c3299fc3604fab8f3a0504a2e5241444a7df821d2e62a` |
| 11 | `def` | [normNegCoeffMul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/normnegcoeffmul.md) | 152 | `declaration-track:5156652510280585c956fa6be0bd590ce8bdea296b6498a40eaf9b8a2207f551` |
| 12 | `inductive` | [TypeToCharPResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/typetocharpresult.md) | 172 | `declaration-track:cee59047f4287729b9e503336e8c226849b5c95c705a91dd5197c07483f2cd81` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/instance.md) | 176 | `declaration-track:88b37ae98b553970da1cfc29aa5ed03e9988f4618a8fb6523f552e1b00ebc2ba` |
| 14 | `def` | [typeToCharP](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/typetocharp.md) | 183 | `declaration-track:c0292b5bef0a891487166c1d4fdd8a448c4eb2bc350f3fff95ca206bf70b055c` |
| 15 | `def` | [matchAndNorm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/matchandnorm.md) | 216 | `declaration-track:844f71ae375d7b3017afd171ed912736acc2a2c6d7cc79a2773de1d1baa8d8fe` |
| 16 | `def` | [derive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/derive.md) | 246 | `declaration-track:4482992c803962fa67914cc5517267d750f1dee97d86d8de4f85adcbbc9a130e` |
| 17 | `def` | [reduceModCharTarget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/reducemodchartarget.md) | 275 | `declaration-track:ae15b7777debbc1aec98addb69702571a2e1162e4ad19ce6dde432ef720ac0c8` |
| 18 | `def` | [reduceModCharHyp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/reducemodcharhyp.md) | 288 | `declaration-track:fda0437bc644d616e23e8bfdca52689cacc19c551efa71b76d623bee0c2effe1` |
| 19 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/syntax.md) | 315 | `declaration-track:5afcdfc5ebf0ca38b99461e381030ff697abcc15e406c7a949eb2b0516d51028` |
| 20 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/syntax-source-edition-2.md) | 317 | `declaration-track:ec5c761ceec9b7ca77ae22aa71af126bb064898da0b0897cc80c637b860aa5b1` |
| 21 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ReduceModCharNamespacedCharP.lean/declarations/elab-rules.md) | 319 | `declaration-track:a5104e5922d5d9b48c60a71e24332dc962a4fef5860241d67367dc6d19de5891` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9d9880289a2c26a6f1193f900dbac29bacbbc853094b95db5378a531e81ab0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean","GRWTSK/_verification/specifications/Algebra/ReduceModChar/Variante0d052cb8a27b381e8b8c03dad519902868a956a5e44758bfe9a4768a45a3778.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
