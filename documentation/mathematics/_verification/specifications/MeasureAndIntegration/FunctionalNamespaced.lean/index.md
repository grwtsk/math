# Verification target: Functional Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42291c6dafca5e513a306ef3953a2e7f7d1f43f0",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42291c6dafca5e513a306ef3953a2e7f7d1f43f0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [theta](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/theta.md) | 37 | `declaration-track:f56ff0305dd286ffa5260f907a4ff26aadb3afd3ccfd528e7521784409afd9d9` |
| 2 | `def` | [vStar](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/vstar.md) | 40 | `declaration-track:851aaf4f96dfbb61f3034a09b320dec654aa03cbc74e11f9ef6460f0c90e595e` |
| 3 | `def` | [cStar](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/cstar.md) | 43 | `declaration-track:f3115c29d9e3d72ddb1ed2b0e5c21cbb8194f0d773dbd796ac606695975a3b3d` |
| 4 | `def` | [cFun](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/cfun.md) | 48 | `declaration-track:9bd89c26020f43ca81d9f651095be5f5ffcb880d54d4111af381b4958032bad7` |
| 5 | `def` | [aStar](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/astar.md) | 55 | `declaration-track:55e34b965612201d663757f371d36e193794a97222055881d3df89d4af4d4b2f` |
| 6 | `def` | [bStar](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/bstar.md) | 56 | `declaration-track:99311f157386fe7cd0e0265a38be0b3b222adee11ecddf28b9f047b883dccb4b` |
| 7 | `def` | [jStar](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/jstar.md) | 57 | `declaration-track:879b128d4ef84d5cf827e2ee686318d7029401d48d1bda686a9c052fcb39c51b` |
| 8 | `def` | [HD](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/hd.md) | 61 | `declaration-track:2be63bc497896beadf4ff7bbf77d86d6fcddba827821d6d2ba98f9256c1e0478` |
| 9 | `theorem` | [theta_nonneg](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/theta-nonneg.md) | 65 | `result-track:330a28578192d1933cc10a6f469b6adbb3f82d80103584d417420b11cc99b495` |
| 10 | `theorem` | [theta_pos](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/theta-pos.md) | 68 | `result-track:3550e44d1ab74eac37e76b8727117a40bf636c83b4c1dd9a778edf74ab3162c1` |
| 11 | `theorem` | [theta_le](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/theta-le.md) | 71 | `result-track:fa11e8e2de8828dd7a00914f743b922b36a6630211a68861c1a7d66cf74aab37` |
| 12 | `theorem` | [sqrt_two_inv_lt_one](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/sqrt-two-inv-lt-one.md) | 76 | `result-track:d100a6d05e8f58e8973b20237814532b960fb28bd2f02eb73de7c15fb4ddbe0d` |
| 13 | `theorem` | [theta_sq_le](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/theta-sq-le.md) | 82 | `result-track:9aca17aaa9f4f681ae7575177053da2b573582ca74586fcc00bb2d08a89fbf09` |
| 14 | `theorem` | [theta_lt_pi_div_two](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/theta-lt-pi-div-two.md) | 90 | `result-track:e0b0d81637bae3c585b0828cd52a680e827860425a280c7fdd4081d5e31aa8e6` |
| 15 | `theorem` | [sin_theta_nonneg](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/sin-theta-nonneg.md) | 96 | `result-track:748c51b288d804f06c38bbf7b5cfdf30ece58cbf8d23a9149ec65dc8d8a0f90b` |
| 16 | `theorem` | [sin_theta_pos](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/sin-theta-pos.md) | 101 | `result-track:d3c68e5e3bd3054c5e2d8c219449086c02b5781320e370588e5b056757c8eb07` |
| 17 | `theorem` | [cos_theta_pos](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/cos-theta-pos.md) | 106 | `result-track:0080fe36e824db5a61a20c5cefd5258eb878011322b9e336ea78ac450f02d8a9` |
| 18 | `theorem` | [cStar_denom_ge](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/cstar-denom-ge.md) | 113 | `result-track:c42a9047a74fc10bfaf6787e3aaf211f859199791aec8ac67c790eeb6ff04a2c` |
| 19 | `theorem` | [cStar_pos](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/cstar-pos.md) | 120 | `result-track:39ed8767a497649357701883852d2c4192fcf810ee8b0bce02a823e9bf1e996c` |
| 20 | `theorem` | [cStar_lipschitzOn](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/cstar-lipschitzon.md) | 129 | `result-track:7f2e470af69653b2ff5c02334939fd888d24b2f90b2e73e0162c876099982e3b` |
| 21 | `theorem` | [cStar_continuousOn](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/cstar-continuouson.md) | 228 | `result-track:e72781124ae682dbd01900e9286e6672752248466a8ba0b92510c00325fa4f6d` |
| 22 | `theorem` | [cStar_eq_tan_form](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/cstar-eq-tan-form.md) | 237 | `result-track:2c5388e62ba2471fed735390ccb884a89506ac8a9b3e3c13b75031ac2a4b16c4` |
| 23 | `theorem` | [sqrt2_mul_half](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/sqrt2-mul-half.md) | 253 | `result-track:00c48aba7289f66d350b2cb18c9f7ea2771a44b092946e661f7dd7fb2f1d850e` |
| 24 | `theorem` | [sqrt2_mul_neg_half](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/sqrt2-mul-neg-half.md) | 262 | `result-track:69f86bea11669a135be6d475b674be7e76fca78d933ccfc8dcdb78470211dfeb` |
| 25 | `theorem` | [aStar_eq](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/astar-eq.md) | 267 | `result-track:5e17be89c4e8a471c5462d35e255628860eab363b68eba70d2f58973999098ce` |
| 26 | `theorem` | [bStar_eq](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/bstar-eq.md) | 281 | `result-track:662f70b840143d3dd84dd3f3d25987e975146392dcc32d32e7c63f98bc78b8dd` |
| 27 | `theorem` | [hasDerivAt_left](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/hasderivat-left.md) | 300 | `result-track:335d08c00f885a98869279663e6943bb59c957db8ed05dda7446015fe85eacfd` |
| 28 | `theorem` | [hasDerivAt_right](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/hasderivat-right.md) | 314 | `result-track:a76b39aedae3f5fdf1e9ecd5fd7149ab7dcffec0ce17777a16a9659ef0bf7505` |
| 29 | `theorem` | [kernel_eq](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/kernel-eq.md) | 329 | `result-track:686abdd6b71831038ca144ebcccc9cf927ca7729881607f956e5f433618f9b62` |
| 30 | `theorem` | [jStar_eq](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/jstar-eq.md) | 393 | `result-track:a13c2f8bd5779b65732d6198aebae207a20170a6d141818b4455c6bece41dd46` |
| 31 | `theorem` | [cFun_vStar](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/cfun-vstar.md) | 440 | `result-track:1bb48c98fb547c4616ef2ae20f625aa77f9baf56573f7bde9342f7809aba98ff` |
| 32 | `theorem` | [theta_one](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/theta-one.md) | 469 | `result-track:47cee4a536e78ac4fe3663925766d3c40fce7b168540b35d59ae80b53c713ce4` |
| 33 | `theorem` | [HD_one](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/hd-one.md) | 472 | `result-track:b16d4b9b0a14229ad6bae2d93fdf2570e2e587f7498ea0d504d6647aeb071e23` |
| 34 | `theorem` | [jStar_closed](../../../../MeasureAndIntegration/FunctionalNamespaced.lean/declarations/jstar-closed.md) | 491 | `result-track:cb2b2295b023e68d49cb15608ba642549f1c57e708a2716f9b9524b1dab7d0e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1979c1a7ab311bbdc97a3fb3082c0fe785baff3715ce8c841f365bdf3279bd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Functional/Variant25e69d2bfc68906ecc9c1afa723f0ac937d6898b8c30dcde92c1ae08f745d9a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
