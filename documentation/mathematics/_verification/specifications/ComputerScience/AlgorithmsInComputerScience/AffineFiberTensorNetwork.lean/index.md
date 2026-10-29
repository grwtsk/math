# Verification target: Affine Fiber Tensor Network

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf5ece59d7c2be8912845646393290157af46a08",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant38a4b537d7a95bb877e132477179ea9501e575b4b5fdfc8f18e6b7115b60c945.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf5ece59d7c2be8912845646393290157af46a08`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant38a4b537d7a95bb877e132477179ea9501e575b4b5fdfc8f18e6b7115b60c945.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant38a4b537d7a95bb877e132477179ea9501e575b4b5fdfc8f18e6b7115b60c945.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Tree.OrderedFactor` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ColorChannel](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/colorchannel.md) | 40 | `declaration-track:44d0a18fc4a60c733b74b875fcb061fe61ea5f4b88f6e52a825386b0c2305009` |
| 2 | `abbrev` | [RGB](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/rgb.md) | 43 | `declaration-track:eddc09a07f61ca0a4eedd201c98a8a2c005990f6c2d6ca1dade0b97c0ea95d30` |
| 3 | `abbrev` | [Point3](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/point3.md) | 46 | `declaration-track:63b78afb924fb4655b2d70e2f298262a5789384afafe31bcce3fed3d48939d9a` |
| 4 | `abbrev` | [Direction](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/direction.md) | 49 | `declaration-track:91a4fe612277833e34624367f4f0e92c49fa8225fea0c17d3951eccf7831e3f2` |
| 5 | `def` | [rgbZero](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/rgbzero.md) | 52 | `declaration-track:d96bdf6c5bdee372a9ddf70a8cb51fa333e1fa3b5f6712576985b93874092ad5` |
| 6 | `def` | [rgbAdd](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/rgbadd.md) | 56 | `declaration-track:99cf7265f3afafebef946675debcb27653ed6cb6d5bfcd1f98296e69a8cd05d3` |
| 7 | `def` | [rgbScale](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/rgbscale.md) | 60 | `declaration-track:f067e44ca32d835feb103eee9721b6041cdb3735cdb1b5a797a0d69aa20580ae` |
| 8 | `def` | [sumRGB](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/sumrgb.md) | 64 | `declaration-track:ba302427966d04abec0bdb2a0070f7989d64b3ff8a8598d8fa59444c1a14733d` |
| 9 | `def` | [sumScalar](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/sumscalar.md) | 69 | `declaration-track:cc0ae4ad43352bf49e2f28290a5bd0f09dfcb0d2ed468e1cf82d425f06e338e5` |
| 10 | `theorem` | [rgbZero_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/rgbzero-apply.md) | 73 | `result-track:2e28b4791db6e9047c872bd1711a2c74588c1119754a31e14020b3a0b260f91f` |
| 11 | `theorem` | [rgbAdd_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/rgbadd-apply.md) | 76 | `result-track:2b889ee61de9ac5155469e6b977f51d623571496129230717ef5f87123f9d3dd` |
| 12 | `theorem` | [rgbScale_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/rgbscale-apply.md) | 79 | `result-track:81d19b36e9d6658fc6d5d77a15b84cd2e16b9828a17111cdd742efad3a7aeba7` |
| 13 | `theorem` | [sumRGB_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/sumrgb-nil.md) | 82 | `result-track:f0e4b03319155553d6a9600f0656bfd4c2fee0c500fda618ca2af64e72ed1168` |
| 14 | `theorem` | [sumRGB_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/sumrgb-cons.md) | 85 | `result-track:9f9f7806cd6ac490fa1c7dca984cf2062fdd55387c69a59983ce660538b30670` |
| 15 | `theorem` | [sumScalar_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/sumscalar-nil.md) | 89 | `result-track:5f324312a1f93784417a903571711aa08e988d26af9ee3b4ea4d9e9ebf005c8a` |
| 16 | `theorem` | [sumScalar_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/sumscalar-cons.md) | 92 | `result-track:7c586fb2ae3142dbaced621f5e77f2e4a22647459b82a4029f2ead7e8e7768e2` |
| 17 | `structure` | [SHMode](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/shmode.md) | 100 | `declaration-track:3cb655d337936666717c7fe7478cf0d551a292ec935a8fd0ec953390e4960747` |
| 18 | `abbrev` | [SHBasis](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/shbasis.md) | 106 | `declaration-track:e3ef349889acae37993af51def105a149a928738f93ac65023c5d395a7eee540` |
| 19 | `structure` | [HarmonicTerm](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/harmonicterm.md) | 109 | `declaration-track:39880a01f9183834cb80bf2f1b46214cee5eb7002ae9308dc070fad62ed4b593` |
| 20 | `structure` | [FiniteAngularFiber](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/finiteangularfiber.md) | 114 | `declaration-track:6eb7844ce42c7f55976d8eb3d1e3617da87f175561f3dcfcff04d23d89631025` |
| 21 | `def` | [FiniteAngularFiber.eval](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/finiteangularfiber-eval.md) | 118 | `declaration-track:ab5b4c9508c59b12a8a175c9276573b28c853cabdc06e076c059246ccb040689` |
| 22 | `structure` | [RadianceSection](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/radiancesection.md) | 127 | `declaration-track:20604963f67fe13959adb567c75b85da31c889649c9954f11a7d7325f05013aa` |
| 23 | `structure` | [LocalAffineChart](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/localaffinechart.md) | 132 | `declaration-track:fd8fb77f8165e084b2b71a1c4fce61569ca98fe9ef06ad4cdf277c36f5246a1c` |
| 24 | `structure` | [GaussianSplat](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/gaussiansplat.md) | 141 | `declaration-track:08d7eb5dcbca6acd39117280b8a698c29fb34a74da877b8dd0862105d42830c2` |
| 25 | `def` | [GaussianSplat.color](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/gaussiansplat-color.md) | 148 | `declaration-track:12146b1629c70f26e84c75c25c5ac726ba77e34a18c4d97eea26d89c2550ea1f` |
| 26 | `structure` | [GaussianScene](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/gaussianscene.md) | 155 | `declaration-track:4e60eec99d9201415a9cd82f1a4380e17d4b839f1c2cb0fccc8bc82354503386` |
| 27 | `def` | [GaussianScene.density](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/gaussianscene-density.md) | 159 | `declaration-track:d92d5715ad9118e85bfa05d680940967ca0a99139c49004b9508e423b0f390b3` |
| 28 | `def` | [GaussianScene.radianceDensity](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/gaussianscene-radiancedensity.md) | 167 | `declaration-track:c7219f3b0955117ca5891d3a6bd77d0d8cb87a33a7f9b8baeb3d1466c26af26f` |
| 29 | `structure` | [GaussianSceneSectionAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/gaussianscenesectionadapter.md) | 181 | `declaration-track:617e27b52abf6fc130138bd0bf2f8b4d585da90e9e0d9030b8d1aadb66d0b2ff` |
| 30 | `def` | [GaussianScene.toSection](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/gaussianscene-tosection.md) | 185 | `declaration-track:8eea7fd9cde89643666bd2b7f682d32359e5710564bf49d8f47e14b2a1b81810` |
| 31 | `structure` | [Ray](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/ray.md) | 192 | `declaration-track:5931db00384d551ab61a5bc0119d6f119d068b5bb3fd9fca00055d3b1bae943c` |
| 32 | `structure` | [RayKernel](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/raykernel.md) | 198 | `declaration-track:be32e6cf443fdb1431272fba03e12fe8a10856ea83d31f4dfcf8a4682fea673e` |
| 33 | `def` | [atomRayContribution](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/atomraycontribution.md) | 203 | `declaration-track:e1366c0745a3a485f16d5ddf45ec49043d0a0755f926f6845324a365a81733a5` |
| 34 | `def` | [renderRay](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/renderray.md) | 211 | `declaration-track:fc872e2af9377cb1ca7b2be70228b0bacf5b46be433ef4b29c17580a903047b3` |
| 35 | `abbrev` | [ObservationOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/observationoperator.md) | 219 | `declaration-track:93ebd0c76bb6ffab5c69334c4ab8ddeae348ceec396ab25b1614110f0a9658bb` |
| 36 | `theorem` | [observation_eq_of_same_section](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/observation-eq-of-same-section.md) | 226 | `result-track:10250bb6c3c274c0ea3bf49b5389d8bd5b6a484a6b8d4a134fa76d78792ce420` |
| 37 | `inductive` | [RenderingParadigm](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/renderingparadigm.md) | 235 | `declaration-track:7e9d381172668037a29e96fe72ee2b0a685c182cdd6136477e7ca4192f7f4277` |
| 38 | `structure` | [ParadigmRealization](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/paradigmrealization.md) | 242 | `declaration-track:fe5f8cc4fda2df425b9d0bab2e59cdfcb49ee8e56c3c73af95709cf83e3badd6` |
| 39 | `def` | [SameUnderlyingSection](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/sameunderlyingsection.md) | 247 | `declaration-track:cc7ae19d9c40cd0f909af1b14d4a36ffbae6b04ce5953a8ed87ff65144c0928b` |
| 40 | `theorem` | [render_invariant_under_paradigm_erasure](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/render-invariant-under-paradigm-erasure.md) | 254 | `result-track:af5df822a07a1a1c9a6e9ad4887ecb7511d310c575fa17263162ca27290516c7` |
| 41 | `structure` | [PixelTensorNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/pixeltensornetwork.md) | 269 | `declaration-track:b2f73af6c4f0ffe25645fa89625b5a20bc9bcb79a42735acf38cd50c9344daec` |
| 42 | `def` | [PixelTensorNetwork.renderPixel](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/pixeltensornetwork-renderpixel.md) | 278 | `declaration-track:2c3bf8ed44125386052c7fc03168f5b046575a2d5d9f4c60417478a1733cc1b7` |
| 43 | `def` | [PixelTensorNetwork.render](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/pixeltensornetwork-render.md) | 288 | `declaration-track:3029950b4bbdc14150fdec8d2a4a66134bb62ccdc12ca338304b721fe4eb828e` |
| 44 | `theorem` | [PixelTensorNetwork.render_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/pixeltensornetwork-render-apply.md) | 292 | `result-track:746d5aca3f4a241ffc28b5f061df7732f3b5a8fc0b3a9f919d8c794837217be3` |
| 45 | `structure` | [SoftPartition](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/softpartition.md) | 298 | `declaration-track:e9972398df05bb707578aa1691a4bb4a18cf5352fc0b4256a05d0c273823387b` |
| 46 | `structure` | [LocalGlobalAdapter](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/localglobaladapter.md) | 304 | `declaration-track:c6561602b86533ed9a99133fd2760ae9f629c8b5dcc0184d1003315d9b6661e9` |
| 47 | `structure` | [GaussianSHDensityCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/gaussianshdensitycertificate.md) | 318 | `declaration-track:68da4322bb7f3dc3118b1e24e83d296f485e7d50d8e8f629c207747c23e26002` |
| 48 | `structure` | [OmegaBits](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/omegabits.md) | 328 | `declaration-track:d1eb73e9e67e59f49bd2ed13e4ed1b0efddf6a1b18ea5e2cf2c8c36093082517` |
| 49 | `structure` | [ModeEnumeration](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/modeenumeration.md) | 332 | `declaration-track:4ebbc0c98fc7f9c036405be11c70069349a72a73c7f3c7e3f0c29d86e9ba1641` |
| 50 | `structure` | [OmegaBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/omegaboundary.md) | 337 | `declaration-track:28225f1dadf40f46a69beb208b484198b94af1fa9c1facfee1e156e6c16544b4` |
| 51 | `def` | [omegaCoeff](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/omegacoeff.md) | 342 | `declaration-track:76a51dd8edb8379ffc15daa8b1ce0ea791ef5b1cae8568454b6c152deefdf2f4` |
| 52 | `theorem` | [omegaCoeff_numerator](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/omegacoeff-numerator.md) | 346 | `result-track:ecfc3dfa32a0399e6ca62236101157810d87102206388df1ff4aab332698b84e` |
| 53 | `theorem` | [omegaCoeff_exponent](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/omegacoeff-exponent.md) | 350 | `result-track:a01cbe944ec1f0a9d7ad307adcdea7b03112eb0e8982059a840ddcd6ce1e520b` |
| 54 | `structure` | [DyadicHarmonicTerm](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/dyadicharmonicterm.md) | 354 | `declaration-track:27b3b16157b11a4189573d13436bb3611e9fe995334871773e685edc0f589fa9` |
| 55 | `def` | [omegaTerm](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/omegaterm.md) | 359 | `declaration-track:35aac9392ff76cb2b49ed1a9269171709be807f3bf193908a56d5f1c137fe185` |
| 56 | `def` | [omegaPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/omegaprefix.md) | 364 | `declaration-track:2495a400f1187f7d13b032140d7f5d3f71f8cb44591fd20f4d9a876ce7a212a0` |
| 57 | `def` | [lookupCoeff?](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/lookupcoeff.md) | 368 | `declaration-track:6737e93ad82c4c3997566d9e16e1e761fe7cf539165acd996442d867c1cd77af` |
| 58 | `def` | [bitFromCoeff](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/bitfromcoeff.md) | 377 | `declaration-track:2c254390f1d1b7978b67191c75368a1129b2c56d2abc29c44be281573851ad90` |
| 59 | `def` | [readModeBit?](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/readmodebit.md) | 381 | `declaration-track:7233b69a160933837b4a2e03aadb4556b5433cc20827e351c646db5e0750465f` |
| 60 | `theorem` | [bitFromCoeff_omegaCoeff](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/bitfromcoeff-omegacoeff.md) | 386 | `result-track:97ba49f3e69840b97b4bf130e866ab276b5736c1f62dca647ef209ab8c22454a` |
| 61 | `theorem` | [lookupCoeff?_head_same](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/lookupcoeff-head-same.md) | 392 | `result-track:df1c150680c10c11eb39365ed8dd968c9fc72d0f15068911388ad351b17d6189` |
| 62 | `theorem` | [readModeBit?_head_omega](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/readmodebit-head-omega.md) | 402 | `result-track:671e4cfc4af7041a1a67c0b738c25c29b8ab652e045911d6002fd8d5fa814c88` |
| 63 | `structure` | [EffectiveDyadicApproximation](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/effectivedyadicapproximation.md) | 411 | `declaration-track:b79ef91de3ec0959e615b8ffe0d6c4d27e7c609c6331c641779d974abdbf1aa9` |
| 64 | `def` | [ApproximationRecoversOmega](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/approximationrecoversomega.md) | 415 | `declaration-track:4eb5a084edc441f018928e22fef5c46c74fc31945a19959fc0f7d9c649d2755f` |
| 65 | `structure` | [NoncomputableBoundaryCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/noncomputableboundarycertificate.md) | 427 | `declaration-track:1f0bdd873b02a744a4144c2c5d4173976d94af2a8892302f5343f7067d7c11e4` |
| 66 | `theorem` | [omega_boundary_blocks_effective_trace](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/omega-boundary-blocks-effective-trace.md) | 434 | `result-track:1b4122025eab1da9cdcc1767a16e3a7cebf7d3192559ba2dd63bf74a371137a8` |
| 67 | `structure` | [ExactOmegaFiber](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/exactomegafiber.md) | 444 | `declaration-track:c40348167556487bd44c1e8a1f4eea58cefc72fb678e7965771911c54ffaa921` |
| 68 | `def` | [addOmegaBoundary](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/addomegaboundary.md) | 451 | `declaration-track:e23e4077d42ac14b088de562fddf2b447963b829b1fbffb81b9819b7021f810e` |
| 69 | `theorem` | [addOmegaBoundary_density](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/addomegaboundary-density.md) | 461 | `result-track:5ec968de41d6e7d9d81409024894862f0fbb48040c5e8a312ecbb1254eb8ea9a` |
| 70 | `theorem` | [addOmegaBoundary_color](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/addomegaboundary-color.md) | 469 | `result-track:af0441dfceb1d4ed6c475f36fe27f3a814869104178ee89b00a753b1b8024e20` |
| 71 | `structure` | [UnifiedArchitecture](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/unifiedarchitecture.md) | 480 | `declaration-track:3fd3c5d63d2a548dcc4b6dad2fb37bad0d47958e674f188d54dda2f0d02b670c` |
| 72 | `theorem` | [unified_architecture_factors_through_sections](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/unified-architecture-factors-through-sections.md) | 491 | `result-track:31809bd26c01be14975452f4f703ce00197a54840dbaf6e744d215f99dfea9e2` |
| 73 | `def` | [crispGate](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/crispgate.md) | 505 | `declaration-track:1b826278833fa67d780034a869339b03629db64175848364d7c38ca003030c44` |
| 74 | `theorem` | [crispGate_false](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/crispgate-false.md) | 508 | `result-track:8a58fadda15170e2e3aeca615f9ce667fbc5e855a33e553e9a22b34e6e0209e5` |
| 75 | `theorem` | [crispGate_true](../../../../../ComputerScience/AlgorithmsInComputerScience/AffineFiberTensorNetwork.lean/declarations/crispgate-true.md) | 511 | `result-track:57fff77cf1011d25e741cc88dec2be4ac1de579a352d5b0c2a5feb7a3e8617aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17b084eb1ed8b14b1485c35ada0d221d54429fb2843b9adb70a20125c06bd733 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant38a4b537d7a95bb877e132477179ea9501e575b4b5fdfc8f18e6b7115b60c945.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variant38a4b537d7a95bb877e132477179ea9501e575b4b5fdfc8f18e6b7115b60c945.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
