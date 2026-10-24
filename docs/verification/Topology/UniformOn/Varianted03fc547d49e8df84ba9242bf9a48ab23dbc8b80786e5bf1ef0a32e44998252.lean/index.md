# Verification target: GRWTSK.Topology.UniformOn.Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e57db90c4f6a06f568460539fa5a492983480b2a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/index.md) · [Full source](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e57db90c4f6a06f568460539fa5a492983480b2a`.

Source path: `GRWTSK/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformConvergence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasProdUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasproduniformlyon--c3559def64cd9138dd8f9a41.md) | 39 | `declaration-track:c3559def64cd9138dd8f9a414e697ca8fa3cca2ce670286eeaccc43db7e1d565` |
| 2 | `def` | [MultipliableUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/multipliableuniformlyon--2c6f36de2fa318899df45f50.md) | 47 | `declaration-track:2c6f36de2fa318899df45f5064f0e8c148c08419db3ec14c2ee76f64fbb4b15f` |
| 3 | `lemma` | [MultipliableUniformlyOn.exists](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/multipliableuniformlyon-exists--c0f047c423670af0397ac257.md) | 51 | `result-track:c0f047c423670af0397ac2578355b3340901a1b1db6fbd7e4dc291d247f063a2` |
| 4 | `theorem` | [HasProdUniformlyOn.multipliableUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasproduniformlyon-multipliableuniformlyon--7e4ecd10183b4c4045e39fcb.md) | 56 | `result-track:7e4ecd10183b4c4045e39fcb9dcda41105a8e22ebfbe799a7fb9cbece0275c04` |
| 5 | `lemma` | [hasProdUniformlyOn_iff_tendstoUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasproduniformlyon-iff-tendstouniformlyon--74af39d9cb7fdf819b6da53c.md) | 61 | `result-track:74af39d9cb7fdf819b6da53c89da9b4a3dfe04a2e7f2d65515106c1b422ee9d4` |
| 6 | `theorem` | [HasProdUniformlyOn.hasProd](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasproduniformlyon-hasprod--5a7774b967688cc897e15f61.md) | 67 | `result-track:5a7774b967688cc897e15f61cbe38384e5dc75a3f4ed10ab981b1f0dffdced5e` |
| 7 | `theorem` | [HasProdUniformlyOn.tprod_eqOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasproduniformlyon-tprod-eqon--aba01a46562b698ec7fbc7d9.md) | 72 | `result-track:aba01a46562b698ec7fbc7d90afce89a341acc90ba2333aeae6418754712f1a7` |
| 8 | `theorem` | [HasProdUniformlyOn.tprod_eq](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasproduniformlyon-tprod-eq--f1398f04b1df03240fa5c614.md) | 77 | `result-track:f1398f04b1df03240fa5c6145ff41dadb19c6efe4ed24e49c46526a21d753549` |
| 9 | `theorem` | [MultipliableUniformlyOn.multipliable](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/multipliableuniformlyon-multipliable--fbc30def68751f029c499f14.md) | 84 | `result-track:fbc30def68751f029c499f148688c38e33397e8696a60d0a23db6e6fd3fd30f2` |
| 10 | `theorem` | [MultipliableUniformlyOn.hasProdUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/multipliableuniformlyon-hasproduniformlyon--811efb574983e0ff0c44323e.md) | 89 | `result-track:811efb574983e0ff0c44323e24eb06966f8296fad1ce2ef6f84832066ef1104c` |
| 11 | `def` | [HasProdLocallyUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasprodlocallyuniformlyon--522e8a8b495da91a6c024d34.md) | 112 | `declaration-track:522e8a8b495da91a6c024d348a9648ad4d8d8e5867b02bb42758ab41408d69a7` |
| 12 | `def` | [MultipliableLocallyUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/multipliablelocallyuniformlyon--03b8bc23e954a8e107983378.md) | 120 | `declaration-track:03b8bc23e954a8e107983378f3cc24e226162ff9d613f87b4c9458f662503af3` |
| 13 | `lemma` | [hasProdLocallyUniformlyOn_iff_tendstoLocallyUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasprodlocallyuniformlyon-iff-tendstolocallyuniformlyon--de7f65f9f801e96559c07d76.md) | 123 | `result-track:de7f65f9f801e96559c07d76769e17b60b77c90d157a8776459e7b7003095863` |
| 14 | `lemma` | [hasProdLocallyUniformlyOn_of_of_forall_exists_nhds](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasprodlocallyuniformlyon-of-of-forall-exists-nhds--6ce605d150b55d8b9e0d406d.md) | 134 | `result-track:6ce605d150b55d8b9e0d406d39d798e6c4e640764154b1962a0028bc459ca0d2` |
| 15 | `theorem` | [HasProdLocallyUniformlyOn.multipliableLocallyUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasprodlocallyuniformlyon-multipliablelocallyuniformlyon--dceaab1f24c782d217b0b358.md) | 146 | `result-track:dceaab1f24c782d217b0b358af197bfd0fe90e5a00a99c2df392002d3b47aa45` |
| 16 | `lemma` | [multipliableLocallyUniformlyOn_of_of_forall_exists_nhds](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/multipliablelocallyuniformlyon-of-of-forall-exists-nhds--e6d120f5360a2f744dcc324a.md) | 156 | `result-track:e6d120f5360a2f744dcc324a728e33ae1eb29878e7acf15c391e4abcbd2481dc` |
| 17 | `theorem` | [HasProdLocallyUniformlyOn.hasProd](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasprodlocallyuniformlyon-hasprod--c2c710fa236b4552b3b37df6.md) | 171 | `result-track:c2c710fa236b4552b3b37df6373c5ddb8ff1a0f39f1bd50ee5468d798c0e467e` |
| 18 | `theorem` | [MultipliableLocallyUniformlyOn.multipliable](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/multipliablelocallyuniformlyon-multipliable--9d2b8ade155ef38316ada175.md) | 176 | `result-track:9d2b8ade155ef38316ada1759cbf8faf5a261479e07439bea046bc893bc162ca` |
| 19 | `theorem` | [MultipliableLocallyUniformlyOn.hasProdLocallyUniformlyOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/multipliablelocallyuniformlyon-hasprodlocallyuniformlyon--d4e93fd7b6cb339a0df06216.md) | 181 | `result-track:d4e93fd7b6cb339a0df06216e60637e7050c73eb4c2ca7ea74af6a11d2f1fd57` |
| 20 | `theorem` | [HasProdLocallyUniformlyOn.tprod_eqOn](../../../../mathematics/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/declarations/hasprodlocallyuniformlyon-tprod-eqon--87104990a59ba3f920312050.md) | 187 | `result-track:87104990a59ba3f9203120506ac31c46732c54a4738fab9510fac0231adca1da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
