# Verification target: Fourier Motzkin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4fe808c4c6ada79cabb2e085c2a7df8a8afb5a3",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4fe808c4c6ada79cabb2e085c2a7df8a8afb5a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Std.Data.HashMap` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Lean.HashMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Datatypes` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [union](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/union.md) | 44 | `declaration-track:d6991e9549f1484c6ce8587343457efba1e0ebdc9d6772950644699b3dadd3e0` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/instance.md) | 47 | `declaration-track:6b9992ea0a2b2ee18e23b4601bf64dadbe19a1843098a9db9a012bf34047d9a8` |
| 3 | `def` | [sdiff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/sdiff.md) | 52 | `declaration-track:e6d460da44eabee9911458b2a6c961646aae5d8bceb3705b09438d7bbe801dd1` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/instance-source-edition-2.md) | 54 | `declaration-track:966b29e75e7fa3427479579cab1da8f516b94d1d07a683504f8e1413693ef394` |
| 5 | `inductive` | [CompSource](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/compsource.md) | 73 | `declaration-track:a2083ab852bc3676b479e0edacf699629ce44f457bd191b9db722c06e72e2637` |
| 6 | `def` | [CompSource.flatten](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/compsource-flatten.md) | 87 | `declaration-track:0f31d3e278bc96cab2686bb85a37903ecc3394afbeffd622b5b429927c781277` |
| 7 | `def` | [CompSource.toString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/compsource-tostring.md) | 94 | `declaration-track:bc1b167be660a29a28f03cb7f8e8d8c03e5c5d4209ed2a2fc1cfc525abc0fc43` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/instance-source-edition-4.md) | 99 | `declaration-track:dfb31079b21955f7dbf683d595089174190934e76cad0ba11e9ed88887c56799` |
| 9 | `structure` | [PComp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/pcomp.md) | 125 | `declaration-track:7ee83898381ad4efab6b484a6810df936de981b573b1cbde4e0f298d08a964c4` |
| 10 | `def` | [PComp.maybeMinimal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/pcomp-maybeminimal.md) | 165 | `declaration-track:d558ed945cdee8b9355ee0ad22c5986170bc0c46fbb3c7e06c660082bf432a5a` |
| 11 | `def` | [PComp.cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/pcomp-cmp.md) | 172 | `declaration-track:4ff431fd84f5d92be0c408d00cf52500b590cddd29da7e60b561a6ad4550e5a8` |
| 12 | `def` | [PComp.scale](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/pcomp-scale.md) | 175 | `declaration-track:e2495c9ae81b9909c26977e4044f622c2a62ddac1e7b7e93d3d121d08935c8ca` |
| 13 | `def` | [PComp.add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/pcomp-add.md) | 197 | `declaration-track:0367d9cbd854f9d8e79a84486c877b5be109f61c1e7d71222497553b065ab929` |
| 14 | `def` | [PComp.assump](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/pcomp-assump.md) | 212 | `declaration-track:79365ddf0cb27310bc42fe3c2d5b03d7cab6ab6fde8998ad00c4bac7bd305777` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/instance-source-edition-5.md) | 220 | `declaration-track:ee947450924e556ca17cf6114c2d1d2fe2642778a3c155b6636d638245a354db` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/instance-source-edition-3.md) | 223 | `declaration-track:c0626fbf84ff49fad63b2e0f451e691b1f375a6f8653631ff69d090e5dc9d19f` |
| 17 | `abbrev` | [PCompSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/pcompset.md) | 227 | `declaration-track:8c868fbd620eb2425ac3d4501ebf2d10255a5bda3bedbad2b08f5b965edebcf5` |
| 18 | `def` | [elimVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/elimvar.md) | 233 | `declaration-track:61a4ead6be1467f64f164e1f4de3aec99826f90c85c06f0d2b657ef2183dfea1` |
| 19 | `def` | [pelimVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/pelimvar.md) | 246 | `declaration-track:e5230ab295284e636a02200992d633619709bca20f6f3ff5cd1474e79938fe73` |
| 20 | `def` | [PComp.isContr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/pcomp-iscontr.md) | 253 | `declaration-track:f9b1048f3b0191581d0a31e51511e098347576bd002730af78d00307af060e8b` |
| 21 | `def` | [elimWithSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/elimwithset.md) | 259 | `declaration-track:80c6040dd23b347dca00f87efcfba6501ac535b176246d520da11d51fb0efc70` |
| 22 | `structure` | [LinarithData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/linarithdata.md) | 273 | `declaration-track:5ed8584db37d033bb4d2cc84d8f4de1cf0b97178f307949129aecdebefa22fa3` |
| 23 | `abbrev` | [LinarithM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/linarithm.md) | 283 | `declaration-track:bb2c333b5ede1989308d8546ec98fc3dfb3fdc791c91474b82bfc58835a41b03` |
| 24 | `def` | [getMaxVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/getmaxvar.md) | 287 | `declaration-track:320d78873fbcc45f68684177faaabe184e4ce690da40302bf32d770b9bd1fedb` |
| 25 | `def` | [getPCompSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/getpcompset.md) | 291 | `declaration-track:bd020d06e50c2bd31a92a60356d4394b8a5153b780859bc83bccd96fdaac09a3` |
| 26 | `def` | [validate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/validate.md) | 295 | `declaration-track:1cd77b1a21addfc50e39f461febb8e45a9448205c1c88becd68e552cc49d1a44` |
| 27 | `def` | [update](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/update.md) | 304 | `declaration-track:e86a6c36fd334a830b73998c571caa1372f594dd4fc64c50316e81e88b9cdc31` |
| 28 | `def` | [splitSetByVarSign](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/splitsetbyvarsign.md) | 316 | `declaration-track:f43f07628b3a95d271ee8e1d32b48019336624e2e1f2ab68afc75b1fa4568b59` |
| 29 | `def` | [elimVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/elimvarm.md) | 328 | `declaration-track:deecd18e2678820c5c06117163ad25e48fed0071638f1b7009e7e781118525cb` |
| 30 | `def` | [elimAllVarsM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/elimallvarsm.md) | 343 | `declaration-track:bab844a44136c871ae5048fb866f8106d28510eccc47caf54a66d4735a8cc30b` |
| 31 | `def` | [mkLinarithData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/mklinarithdata.md) | 351 | `declaration-track:01f2991b08679e9e2db221defc1d74cc5f8fe5a533a013b42fc9ae3d340bca52` |
| 32 | `def` | [CertificateOracle.fourierMotzkin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FourierMotzkin.lean/declarations/certificateoracle-fouriermotzkin.md) | 355 | `declaration-track:528e42b7ee470f911beb08efdb157b2c691115c8e16c52aad0a109e977f1de3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=001b08bda1f4cf498601ec655a62f9366e021ea3237068b5075bcabfff338393 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FourierMotzkin/Variant13b0a31e3cab577cc98859ba6c6ed2b6948d4b278327644c8247eade67a03151.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
