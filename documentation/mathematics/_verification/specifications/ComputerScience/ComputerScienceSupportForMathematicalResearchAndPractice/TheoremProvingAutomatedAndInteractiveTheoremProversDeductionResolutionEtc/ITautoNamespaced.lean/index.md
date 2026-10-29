# Verification target: ITauto Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26babd9571a37e1ff290bd840ed4de9b4f580447",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26babd9571a37e1ff290bd840ed4de9b4f580447`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Exact` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Init` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AtomM` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Data.TreeMap` — import line 15; external provider; requires a separately pinned dependency.
- `Qq` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AndKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/andkind.md) | 98 | `declaration-track:da919e07f0df4b728929c0686deaad2dd46f32dc44a719abbeeaf51612d086c7` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/instance-source-edition-7.md) | 101 | `declaration-track:b45ef7cb0b1655724fe03b127e239c8824f7c4c13847b6f5e5c921ea65b678c5` |
| 3 | `inductive` | [IProp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/iprop.md) | 104 | `declaration-track:10a9545dacc2bc8e7abe4453d0befda6900df507d031a47eb76f64ff1cc17ee3` |
| 4 | `def` | [IProp.and](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/iprop-and.md) | 114 | `declaration-track:ab342be8803e8e4e1f6bccad6b288036e856707569fed49b2ff37e4cca1bd4ad` |
| 5 | `def` | [IProp.iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/iprop-iff.md) | 117 | `declaration-track:cc1223401ca0ffcd7fbf57b92f47d1ecea302aacaa0b05658d51ba9bc17f7fdc` |
| 6 | `def` | [IProp.eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/iprop-eq.md) | 120 | `declaration-track:e236a67ecc92dc3b548593ba3a646540779e2ae34a7203aa76c8bec36cc96d2a` |
| 7 | `def` | [IProp.not](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/iprop-not.md) | 123 | `declaration-track:a4cf9620d1d66f16c180a8943a1a9b5e21d822aa934852ef76f5273db92b8f27` |
| 8 | `def` | [IProp.xor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/iprop-xor.md) | 126 | `declaration-track:d18a7a19ba502e60179743e2b569cbe59a13fa48f92a9db98dbeffb523262ab6` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/instance-source-edition-6.md) | 128 | `declaration-track:9f49dc2464ad74f44f92db9c79770040ef6f995ba65f57b251020351dc3a3679` |
| 10 | `def` | [AndKind.sides](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/andkind-sides.md) | 131 | `declaration-track:239af6fcb77051eddbca7f0f449a28d7b8750d92494d91dbfee0955dafe26751` |
| 11 | `def` | [IProp.format](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/iprop-format.md) | 136 | `declaration-track:86645fa1a9731918b09786ac5dee83bfb581d0e9f176a0827753e8c2b35535bf` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/instance-source-edition-4.md) | 146 | `declaration-track:8108402dbf35dfe4646c813ebf482226d0f4f37708458a3b1678838cceac3596` |
| 13 | `def` | [AndKind.cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/andkind-cmp.md) | 149 | `declaration-track:5ffc1cb815f3fe8e821eb279687af5bc55ad2371eeec1bb40e242cd1b1fd57f6` |
| 14 | `def` | [IProp.cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/iprop-cmp.md) | 154 | `declaration-track:a967573a0c36631da75009aa5bfe2ddff48f21ea2ae1bd4964b4cb7931701225` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/instance-source-edition-2.md) | 169 | `declaration-track:25826faf44ffc7085f15074d02e331190051a60398235453b6f35319412412b3` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/instance-source-edition-3.md) | 171 | `declaration-track:6abbd8dc68e1ad5d9179dea9a0fbd454d37f2b016488313c09c5b26bafffd364` |
| 17 | `inductive` | [Proof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/proof.md) | 176 | `declaration-track:dd472cadeef04198092ee09bdfe8100df1b043bd73b1dfedf01339cc5564846f` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/instance-source-edition-5.md) | 242 | `declaration-track:8c491a4629c59852c56e3a03a7a520b799fc45159baaee4629031e5fd6e2f50a` |
| 19 | `def` | [Proof.format](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/proof-format.md) | 245 | `declaration-track:d099f878096786bee4423dc9d10c07864ed97442d476c18e0c53a32163b37699` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/instance-source-edition-8.md) | 267 | `declaration-track:bd1ff42fa379dc9133ae4bb87ba6665446316eda9436251b64b78f487d977a10` |
| 21 | `def` | [Proof.exfalso](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/proof-exfalso.md) | 270 | `declaration-track:b8d180fe518d6d5b211740a670ee18e2de1a4306c9d9005b9efa4378b12ca4d6` |
| 22 | `def` | [Proof.orElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/proof-orelim.md) | 275 | `declaration-track:a76c170d4541be29d319191ea6b220ac54f75d3bee26f9cec16e9d4f27ca9bf0` |
| 23 | `def` | [Proof.app](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/proof-app.md) | 281 | `declaration-track:a488b12b1c77b117a733f6f8c727e7d5511705ced71d4ae66b75915c1d99db51` |
| 24 | `def` | [freshName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/freshname.md) | 349 | `declaration-track:3575267764398994273e1aa7ed71269ca966dca7f0dffc038ee54b71cc56a725` |
| 25 | `abbrev` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/context.md) | 352 | `declaration-track:c8cf058c080f589a69df11b143ad4b0852fe20714360989c9721883a201726aa` |
| 26 | `def` | [Context.format](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/context-format.md) | 355 | `declaration-track:47cbbb872e615f7087610fd0a330a1869ca01a2b2329921c7c2ccc21ffdb1f1c` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/instance.md) | 358 | `declaration-track:1e3fccb180f9e0db6d81bf64135ec5d5aeaf5e28c09269505ffdf026fdb203fb` |
| 28 | `def` | [Context.add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/context-add.md) | 365 | `declaration-track:2d8df5a1834a4a3f65a1a6e8c4cb5570f5975d8cd75009df5618a42e9c9f7311` |
| 29 | `def` | [Context.withAdd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/context-withadd.md) | 386 | `declaration-track:0bb831add620d9098a3dcca8e46de5844a8da8a7899d8fd18328cdcd3f5bfd95` |
| 30 | `def` | [mapProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/mapproof.md) | 393 | `declaration-track:b307a863324995f3de7e016e6455d4d0f707fecef0de20fb1b687236a93e3adf` |
| 31 | `def` | [isOk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/isok.md) | 397 | `declaration-track:9a8058adc11aee3ebf4fe87d47ed4b3cd01143be15ece265dc56db84a9b184da` |
| 32 | `def` | [whenOk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/whenok.md) | 402 | `declaration-track:8b744d87ddbb0fd6fbf7413ca3d6787c498006794df622e2f082afb217f3c67c` |
| 33 | `def` | [search](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/search.md) | 419 | `declaration-track:e20f31aaab9b87afa04b51d6713e274eb2f68b2809e77b91f5b5b2f2cae50482` |
| 34 | `def` | [prove](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/prove.md) | 457 | `declaration-track:9b9107556c4691d2d0a8bc9ac816a9a94a6922124a2cd6b933c95e416c2b2a69` |
| 35 | `def` | [reify](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/reify.md) | 486 | `declaration-track:cb5437e9a327e9b9dd429d1d5dc4b68bd9644fc4304c4e662dd4d79e27b8e67d` |
| 36 | `def` | [applyProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/applyproof.md) | 502 | `declaration-track:72fa84488b0d9b2ba0308557419d68fca44c7dcaf49d15874deb9cfa0ecddc8c` |
| 37 | `def` | [itautoCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/itautocore.md) | 650 | `declaration-track:c1e5af39682ce6471bad46ed63e27072bd3db500285d309b80aa99a8f847d6d1` |
| 38 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/syntax.md) | 720 | `declaration-track:4bab451163cd0a52e4785060e61c2ce4a163bd244594de81ed8719ce704a5b8f` |
| 39 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/elab-rules.md) | 722 | `declaration-track:f0f76a8602c9b053702af138498e190d4794b788a426982250cb019d2688ac7f` |
| 40 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/syntax-source-edition-2.md) | 729 | `declaration-track:b19ff0e99fe97960a7a2e792a38dc729b78545da73bc0dde170859744ca2d74a` |
| 41 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ITautoNamespaced.lean/declarations/macro-rules.md) | 731 | `declaration-track:6374481ad91c652213fcdc4801636683cbb882454c87627b72ceb8246d48d5f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=812531699940607d8512c4b973892a687a592a0275475a73c4b00864cdd56584 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/ITauto/Variant4fd7ead4a03fccdb66342351f5d6f9fabaeac52983d5b4de9c050830acec33ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
