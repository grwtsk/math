# Verification target: Cofix Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "781048609589e8b637ca09908bfae93fa10a33e5",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `781048609589e8b637ca09908bfae93fa10a33e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Multivariate.M` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [corecF](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/corecf.md) | 59 | `declaration-track:ed4a9471b7a3f8da8cf76a0dcf8d285422a0d62d11671d2dbdef1f191e89bd03` |
| 2 | `theorem` | [corecF_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/corecf-eq.md) | 64 | `result-track:75d4af55380f56cc649196a4484aa62baa786f63b942588e9580af415065453a` |
| 3 | `def` | [IsPrecongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/isprecongr.md) | 71 | `declaration-track:34f86082f34d378a4628a3672d77213e5f6503427f8f453191c77aa44b7cc25c` |
| 4 | `def` | [Mcongr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/mcongr.md) | 79 | `declaration-track:bb2012d0f7a240f492e75f4aa6682efae0a8834a649b38e5e318fcf07e81e46a` |
| 5 | `def` | [Cofix](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix.md) | 91 | `declaration-track:ec793e9ef855ecb2a8a4f62487f81019a92a020bda223cd2447b5ad7c1429bc4` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/instance.md) | 95 | `declaration-track:f98e3cc48b918d47c86716b8455a7ca5b61882a552d50b8b381c5d8169e0480b` |
| 7 | `def` | [mRepr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/mrepr.md) | 100 | `declaration-track:b81846ccc1b23d7cc49dc7209e18d39271bb44ca12cb0dc7de23c64bab48405d` |
| 8 | `def` | [Cofix.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-map.md) | 106 | `declaration-track:0a554358309803c7f624e48a923086a4526675150f10feb92c3fdada3e5e11f2` |
| 9 | `instance` | [Cofix.mvfunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-mvfunctor.md) | 129 | `declaration-track:4b29f9244fdf6f491b2ee383b071a25bf81a908e866daf649db7022e36076932` |
| 10 | `def` | [Cofix.corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-corec-source-edition-3.md) | 133 | `declaration-track:38aa6067b69f41b2ebc4069fd04978e31db522b8cba74964810ead671f6df014` |
| 11 | `def` | [Cofix.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-dest.md) | 138 | `declaration-track:bbdef942c6baffb46eb2347d5126c657c0d4662a03895d9376325fa1f2151f75` |
| 12 | `def` | [Cofix.abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-abs.md) | 154 | `declaration-track:b73208fcfd6067e2d63b3315caaecafae2a1a1b6881f564931f2520eb949cbd5` |
| 13 | `def` | [Cofix.repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-repr.md) | 159 | `declaration-track:317df1933f122fec5eaf3c9beb5ca8db8a12f175f515a83026aa207654fe2463` |
| 14 | `def` | [Cofix.corec'₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-corec.md) | 164 | `declaration-track:0de65545c65e828ffe815bde026038ecae0f36a3d9fde6f0481e44bdc5febf2f` |
| 15 | `def` | [Cofix.corec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-corec-source-edition-2.md) | 171 | `declaration-track:2e71c122b08088cd34ea508d990cf69d2b3ca9498f987ceff96786f67c28e28a` |
| 16 | `def` | [Cofix.corec₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-corec-source-edition-4.md) | 179 | `declaration-track:ab920d6cd3bac2fc43ea1ddc3c10c224f87b91ec846681c03736194c13767d9c` |
| 17 | `theorem` | [Cofix.dest_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-dest-corec-source-edition-2.md) | 184 | `result-track:aefb7f1595973b732c255f0a8aeb09025e0f76a4e339b8a4e599d42ef2d90ca8` |
| 18 | `def` | [Cofix.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-mk.md) | 194 | `declaration-track:93bc7ccd638d6dcbc6b9070d3bd6122e2a20570c124bd0aff69e4ce4be2fde5a` |
| 19 | `theorem` | [Cofix.bisim_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-bisim-aux.md) | 214 | `result-track:c67bd6556cf7bc11371fceb162fd7089996322e5c2443b02c0633ceca817289a` |
| 20 | `theorem` | [Cofix.bisim_rel](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-bisim-rel.md) | 258 | `result-track:36feafb849325c488309746edb1d3d3ca9a0209e53d43d8612f8b230f7322450` |
| 21 | `theorem` | [Cofix.bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-bisim.md) | 284 | `result-track:260521154764a315fbdd7cd05b0822fd502f63d64cbb3bd758457dc1ed72c5e8` |
| 22 | `theorem` | [Cofix.bisim₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-bisim-source-edition-3.md) | 305 | `result-track:9101aaf4c8a329a333c93160040b4317320e3a5757b626cc708f88725fee63fd` |
| 23 | `theorem` | [Cofix.bisim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-bisim-source-edition-2.md) | 314 | `result-track:6b9716b33d7d22ebaad47e84e5237a1ed498909991b3ceaae25d8f9cc01e22c1` |
| 24 | `theorem` | [Cofix.mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-mk-dest.md) | 335 | `result-track:d96be870c0b5c88ab009adf2551071e44beef7b22d040b3711392fb3fb48e804` |
| 25 | `theorem` | [Cofix.dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-dest-mk.md) | 355 | `result-track:52b211456a7202dd0096554e50d32788c0066f59655f06f6385b12c0019ddd0e` |
| 26 | `theorem` | [Cofix.ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-ext.md) | 362 | `result-track:c8ae1c79311240a868ed549d316ca1e9137bbdf2c3717653e62bfbd73e0357e0` |
| 27 | `theorem` | [Cofix.ext_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-ext-mk.md) | 366 | `result-track:2bd98993c1fb6dc3ab296380f331f5c6e30afb46f328cf47cb4974bfb3e2ebee` |
| 28 | `theorem` | [liftR_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/liftr-map.md) | 378 | `result-track:d168da08a3d1aa7fd9c353fbb1e71bcf08da650eea8f9d795137b1460690221d` |
| 29 | `theorem` | [liftR_map_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/liftr-map-last-source-edition-2.md) | 390 | `result-track:f7d612ce64b1103d99930c0eda51e0ac561805fcf582824f66d8941cf5528446` |
| 30 | `theorem` | [liftR_map_last'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/liftr-map-last.md) | 422 | `result-track:159b651e7c9d45c642b9bd58a7c2ae83f3412ebb081f1135da12c0d27a2680ff` |
| 31 | `theorem` | [Cofix.abs_repr](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-abs-repr.md) | 432 | `result-track:b379e9b3fceb495abd441e625c25ddf054f87888ca0e059cc964449c613a7243` |
| 32 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/syntax.md) | 458 | `declaration-track:2bb30c0b6b847991aec63e03c7cd06a362493c6e4d505ec4f84ce4ba95514834` |
| 33 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/elab-rules.md) | 460 | `declaration-track:0ea8508b2db80b2d50436af9fcca01861782adf66fbba039b4d90e68eb6b8ff5` |
| 34 | `theorem` | [corec_roll](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/corec-roll.md) | 520 | `result-track:db1f28b1c041f5179b6337a6b16d7715c6d00a065014a209381b2a2073dbb19b` |
| 35 | `theorem` | [Cofix.dest_corec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-dest-corec.md) | 529 | `result-track:0fce1bb665e1428a8609160f6c31c7c08034c1f92818fd77d378e5cfb4160961` |
| 36 | `theorem` | [Cofix.dest_corec₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/cofix-dest-corec-source-edition-3.md) | 548 | `result-track:d7775f6257850ed49937e08d75e7508a7fe4eef72de15e27b4f587a224e75bcc` |
| 37 | `instance` | [mvqpfCofix](../../../../../../ComputerScience/TheoryOfData/DataStructures/CofixAligned.lean/declarations/mvqpfcofix.md) | 556 | `declaration-track:f16cb7ef064c1865a81a67a032961812621afcaf95ca9cbc1b7bbef8e61abb2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fed0aeab4d614698ff5fac06740382072915f0f35f17c8300da7061673bccc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variantfae555b46544b20c6a2e8e5260e8e42d5bb0c199f7ff8b0439b834271c5a517d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
