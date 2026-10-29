# Verification target: Util Namespaced Public Poly

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d78ef952cbc364735b7e3b55131bc22f92763d0",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant77ce5c10da4e0163f9d9654b057821c584963a30768502ff19044841b0334eec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d78ef952cbc364735b7e3b55131bc22f92763d0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant77ce5c10da4e0163f9d9654b057821c584963a30768502ff19044841b0334eec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant77ce5c10da4e0163f9d9654b057821c584963a30768502ff19044841b0334eec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Arith.Int.Simp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Poly.isZero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/poly-iszero.md) | 21 | `declaration-track:6cff809b8f896873305565a586411d3f55ff06a01aa809556e534419c8804657` |
| 2 | `def` | [Poly.isSorted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/poly-issorted.md) | 29 | `declaration-track:6fb543eba75602e02c3aae9aadc3c95c2cda51be111983c99b83dbe3424f063a` |
| 3 | `def` | [get'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/get.md) | 43 | `declaration-track:6dfc62cfebd8f647862c0e9bab39a29f6b1eabd24c8145e15e3af757d01cd09d` |
| 4 | `def` | [modify'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/modify.md) | 46 | `declaration-track:a7e4e7276a87813e5fd1c51b69c07b8ca66142966642f293ace08fdaf23b8f24` |
| 5 | `def` | [inconsistent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/inconsistent.md) | 50 | `declaration-track:6b09ba37433207910e8df31a4ab0c5fec339fd2a2ab5f51cd1b5e9b5b5bdcd19` |
| 6 | `opaque` | [mkVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/mkvar.md) | 57 | `declaration-track:64144a7a5a3f922e3f4545c10287bc40d44c64e54f6912d5a9ef810a01d65dcd` |
| 7 | `def` | [getVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/getvars.md) | 59 | `declaration-track:ae3648d3d4df3662bcc7b863b367e6e4e74d8338b8949f97a77ffa66c1c49416` |
| 8 | `def` | [getVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/getvar.md) | 62 | `declaration-track:fa75264d167694704a7bf556461cd0594d8e26fa288c14848bde9ae6e0fc86ca` |
| 9 | `def` | [hasVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/hasvar.md) | 66 | `declaration-track:761c8bc4fd54a7a48e61045311f4bef04de6ea82e0e07430d5b2671994c5d7f7` |
| 10 | `def` | [isIntTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/isintterm.md) | 69 | `declaration-track:9320d935d1cbe0fe075fc812fb42aefabda97e9816d428a43b5b5e7cc7b45895` |
| 11 | `def` | [eliminated](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/eliminated.md) | 73 | `declaration-track:f87718c604329d9a42f01e2eca11fdcb41f6c499e721e7fae61c94dede2e21a7` |
| 12 | `opaque` | [EqCnstr.assert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/eqcnstr-assert.md) | 78 | `declaration-track:11e1d63b18dfb081f81843e31ab078121e61b8ee96321c584d16ccde287140bf` |
| 13 | `def` | [resetAssignmentFrom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/resetassignmentfrom.md) | 81 | `declaration-track:c05a5fc049deec36699d8c81a7aa64f3d820b5d870a4de7dbc949820623cbb0e` |
| 14 | `def` | [Util Namespaced Public Poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-polyi-source-edition-2.md) | 84 | `declaration-track:26d825fd08c098e50e1e357439ad529c4bf371e9f2d8a7e0c2815f090836bd67` |
| 15 | `def` | [Util Namespaced Public Poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-polyi-source-edition-3.md) | 97 | `declaration-track:300dc25ba21301428399b5b15de53821c9441deec54029902f4b266202d0c004` |
| 16 | `def` | [DvdCnstr.isTrivial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/dvdcnstr-istrivial.md) | 101 | `declaration-track:36a2bf841b2ccd06724c377222e09cdbb33106e839351aeed306d11a4bfc40f3` |
| 17 | `def` | [DvdCnstr.pp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/dvdcnstr-pp.md) | 106 | `declaration-track:e44da8358027fb725f1ff8005a0a5fd242caebea0ab459c5f4afbeca7d286c66` |
| 18 | `def` | [DvdCnstr.denoteExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/dvdcnstr-denoteexpr.md) | 109 | `declaration-track:ca907855810d1432147d8b2518382e9a2f82f276aad5c1b911bd2dc47240087d` |
| 19 | `def` | [DvdCnstr.throwUnexpected](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/dvdcnstr-throwunexpected.md) | 112 | `declaration-track:36e569ddf19fb9b592b6f273b81c825f7081b80b9ca84b46498d2bbc6c4f769f` |
| 20 | `def` | [DiseqCnstr.isTrivial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/diseqcnstr-istrivial.md) | 115 | `declaration-track:661d092710fc79ec6195bbd5c27d08e383acfa3c737970ce5f9de5907e44d341` |
| 21 | `def` | [DiseqCnstr.pp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/diseqcnstr-pp.md) | 120 | `declaration-track:033914ba1f0ecb39562dfe0ea973b38d922e720604f9c2e22b94ff7a16846e71` |
| 22 | `def` | [DiseqCnstr.throwUnexpected](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/diseqcnstr-throwunexpected.md) | 123 | `declaration-track:28f42bf5167dfa6bfaf14d16e055a79ae0efe7d07b19702c06eaa8ee4c432ac1` |
| 23 | `def` | [DiseqCnstr.denoteExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/diseqcnstr-denoteexpr.md) | 126 | `declaration-track:51104c161e3430f5da40a29d51226064d129351fb68af4e29f6a59f4de09c6f5` |
| 24 | `opaque` | [LeCnstr.assert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/lecnstr-assert.md) | 131 | `declaration-track:d4a724be36f2d93b05021118731cdd8da66f7c16af3fb0aaa34ab38a9517bc48` |
| 25 | `def` | [LeCnstr.isTrivial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/lecnstr-istrivial.md) | 133 | `declaration-track:80d4db61ae81dd84d77b7eca1e3b5f107204f268d9d49b472721e7f878e2a919` |
| 26 | `def` | [LeCnstr.pp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/lecnstr-pp.md) | 138 | `declaration-track:2d3c6e1e69b616abdb832fc875f585b3475a751bb1dfbb1e254a977d300c7e53` |
| 27 | `def` | [LeCnstr.denoteExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/lecnstr-denoteexpr.md) | 141 | `declaration-track:5fa3ff33383eaf04710b850425c756cd69b95526ddbec67117bb11695fe8277c` |
| 28 | `def` | [LeCnstr.throwUnexpected](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/lecnstr-throwunexpected.md) | 144 | `declaration-track:cf01f57f47a5049b1c318f3fa1517f6487a21ed1e0ba850a053daf67d8f31c26` |
| 29 | `def` | [EqCnstr.isTrivial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/eqcnstr-istrivial.md) | 147 | `declaration-track:012ccd865ffa38619ef5af3a4dffcf9b59699ef7c7eba308e5bfa1142c0af8b1` |
| 30 | `def` | [EqCnstr.pp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/eqcnstr-pp.md) | 152 | `declaration-track:b04ce4d23fbbe26589e07c8016471cda2c8d2cb9976900697b2af55651a5c620` |
| 31 | `def` | [EqCnstr.denoteExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/eqcnstr-denoteexpr.md) | 155 | `declaration-track:05e4497d2a17579372fe730c76c4ceeed0e518fae0f991607f41dfc031e25bfe` |
| 32 | `def` | [EqCnstr.throwUnexpected](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/eqcnstr-throwunexpected.md) | 158 | `declaration-track:9fb08594d498e37b139f049dae17eff0d7442916e355108cf1965c422488762b` |
| 33 | `def` | [getOccursOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/getoccursof.md) | 162 | `declaration-track:af647b6c7bc48f273b15a6564a6c9112707c7cdd1dc0d6a70ef2379a5cb320f1` |
| 34 | `def` | [addOcc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/addocc.md) | 169 | `declaration-track:b159d966714a1f39f22703c17d6bc6273dd474179af3750f6e97d503c399a9ac` |
| 35 | `def` | [Util Namespaced Public Poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-polyi-source-edition-4.md) | 177 | `declaration-track:42a0b3f4103c758be83288688ba6b377330d5b1e9a5539e3c303408782239d50` |
| 36 | `def` | [Util Namespaced Public Poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-polyi-source-edition-5.md) | 188 | `declaration-track:c13baa2ce02cefca17f9decc75522309f8ed59fa31b0926ab002b380f058f2b4` |
| 37 | `abbrev` | [LeCnstr.isUnsat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/lecnstr-isunsat.md) | 199 | `declaration-track:45cff597916bcaf75368be1db9b018f159566ec9141e2460f2d30afbb3c1988e` |
| 38 | `abbrev` | [DvdCnstr.isUnsat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/dvdcnstr-isunsat.md) | 202 | `declaration-track:0f09e44347dc39e517d943f80def7b605d2b3c986c0d4c6172699792f7cf2c0f` |
| 39 | `def` | [DvdCnstr.satisfied](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/dvdcnstr-satisfied.md) | 209 | `declaration-track:b052cafecde088f480da546cd494d98be38df7154574cf68fe1263fa176b7d1b` |
| 40 | `def` | [Util Namespaced Public Poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-polyi.md) | 214 | `declaration-track:013004673ca3c02376da485cae31fc35eb9f1a893dad6635dd1efaf1fa23a8c9` |
| 41 | `def` | [LeCnstr.satisfied](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/lecnstr-satisfied.md) | 222 | `declaration-track:6db4350f0f230f0caf15db739bdbae03721d003632824462edb20d086aa82964` |
| 42 | `def` | [DiseqCnstr.satisfied](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/diseqcnstr-satisfied.md) | 229 | `declaration-track:ead465d1be34f772a65e90356da5b5514fb0bb07163a17f483a8db5b46baedfd` |
| 43 | `def` | [EqCnstr.satisfied](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/eqcnstr-satisfied.md) | 237 | `declaration-track:21d58a08ee67a0c5c940eb00af7d6096cbe564701a5edd26d10d24ebaf01d8dd` |
| 44 | `def` | [Util Namespaced Public Poly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-polyi-source-edition-6.md) | 245 | `declaration-track:cb11c131fe545ebaae4100073906df4e1a295ffe303b0f5ef7e17e7f292f5047` |
| 45 | `def` | [CooperSplitPred.numCases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/coopersplitpred-numcases.md) | 254 | `declaration-track:c37ad65311ed474dd35ab0e9609e6efbeadc2d55b4427fd725dd9cf592cf11ff` |
| 46 | `def` | [CooperSplitPred.pp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/coopersplitpred-pp.md) | 267 | `declaration-track:0293ea1bf05de1d75599f8fb6eb6dde2579747083bece7e3d127fefc1f189fd9` |
| 47 | `def` | [UnsatProof.pp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilNamespacedPublicPoly.lean/declarations/unsatproof-pp.md) | 270 | `declaration-track:eca097b8e9969f284578fef6c89305ff378bfbf18bf5422fd24210c21f278a1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a3d055e92b9f47a2fe7b2108b5f25aee43b64420527b69a0178867f97b73fd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant77ce5c10da4e0163f9d9654b057821c584963a30768502ff19044841b0334eec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant77ce5c10da4e0163f9d9654b057821c584963a30768502ff19044841b0334eec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
