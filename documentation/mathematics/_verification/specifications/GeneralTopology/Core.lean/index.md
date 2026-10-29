# Verification target: Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57c1be65952837b79ac88396b074ef1d5381a6db",
  "lexical_observation_count": 123,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Core.lean/index.md) · [Full source](../../../../GeneralTopology/Core.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57c1be65952837b79ac88396b074ef1d5381a6db`.

Source path: `GRWTSK/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BitSiteValue](../../../../GeneralTopology/Core.lean/declarations/bitsitevalue.md) | 13 | `declaration-track:c157fce0a400a50499d211c7009172536ed9523443888f72a6abae2069b54d06` |
| 2 | `inductive` | [BinaryBit](../../../../GeneralTopology/Core.lean/declarations/binarybit.md) | 19 | `declaration-track:005097883c70ef4faf82146b5a7c5a2c4e178019643b225c1ab201132d3c0998` |
| 3 | `def` | [BinaryBit.toSite](../../../../GeneralTopology/Core.lean/declarations/binarybit-tosite.md) | 24 | `declaration-track:1f2b00847b278fd1ec721270194c27b4fed3b6c2c746acebb97215b36634e9ba` |
| 4 | `def` | [expand2](../../../../GeneralTopology/Core.lean/declarations/expand2.md) | 28 | `declaration-track:e540b6799226d58e9bb85ebc4a28b97e3b5be353a2379114cb4fe506b9414161` |
| 5 | `def` | [expand_pair](../../../../GeneralTopology/Core.lean/declarations/expand-pair.md) | 33 | `declaration-track:f1004eb53c1a4860d595a5d54244580a34dea53eaafd096ad528cad6451f1de5` |
| 6 | `structure` | [FourBlock](../../../../GeneralTopology/Core.lean/declarations/fourblock.md) | 39 | `declaration-track:a44172b722ffcee735200b91fb047e4e6c3cbe3521453d70c93e7e7e406a4382` |
| 7 | `def` | [zero4](../../../../GeneralTopology/Core.lean/declarations/zero4.md) | 46 | `declaration-track:468489fa249c70559cbd94105660ec4217453ed26d7c33c9d31acd63beaa94b7` |
| 8 | `def` | [one4](../../../../GeneralTopology/Core.lean/declarations/one4.md) | 49 | `declaration-track:2da73d7b1be9519336b12a5bc1fe588de5ab68559b2460b6753bd64edfcce17c` |
| 9 | `def` | [classify4](../../../../GeneralTopology/Core.lean/declarations/classify4.md) | 52 | `declaration-track:862646638f8bd7d5dedd7b37db21c171aac8e70b225336b5f4c858e5cbe3c914` |
| 10 | `inductive` | [Transition](../../../../GeneralTopology/Core.lean/declarations/transition.md) | 60 | `declaration-track:ddff7547563eec190ac42386743f85bdbb3ae0b5f74d48d1853c5abf09f2f84e` |
| 11 | `def` | [contributes_to_grey](../../../../GeneralTopology/Core.lean/declarations/contributes-to-grey.md) | 68 | `declaration-track:af0a6d376d046f910edfc4dc411085bd0922907e19532f1fe1c738ef797746f8` |
| 12 | `structure` | [ProjectionFrame](../../../../GeneralTopology/Core.lean/declarations/projectionframe.md) | 72 | `declaration-track:d857bab019fe5eed6fe5ce8cf88f97c8f2d5a2ee53c63dc938545fcd053820dc` |
| 13 | `def` | [Open](../../../../GeneralTopology/Core.lean/declarations/open.md) | 80 | `declaration-track:deb4a72182b8dcba6a728e200af0999747d32f53e23b726de7a3f1530a82940e` |
| 14 | `def` | [ExplicitNullification](../../../../GeneralTopology/Core.lean/declarations/explicitnullification.md) | 83 | `declaration-track:621ed6fbaa64d59d60487b7d531e7cab6febb0e29a7b2dcc152f88336110a65c` |
| 15 | `def` | [Close](../../../../GeneralTopology/Core.lean/declarations/close.md) | 86 | `declaration-track:a39810bc7a1025bd3c723adf4492d64d4ad23684ed5c04043000018c50195d00` |
| 16 | `def` | [AllZero](../../../../GeneralTopology/Core.lean/declarations/allzero.md) | 89 | `declaration-track:6addd4687e5c0c1f8a4d89a542d7b343e025ae70ef4c2b083346ffb26ed98736` |
| 17 | `def` | [Nulliant](../../../../GeneralTopology/Core.lean/declarations/nulliant.md) | 92 | `declaration-track:3d25d199de2c9fd7569d551a5fdc938084f4a1a7dd0ee6bad6f5cb1b7de8663f` |
| 18 | `def` | [WellFormedFrame](../../../../GeneralTopology/Core.lean/declarations/wellformedframe.md) | 95 | `declaration-track:15fc8d67eb32499a93fb183cccbaf594d83fdc95faa013d882d5fed3b6f1567b` |
| 19 | `def` | [exactly_one](../../../../GeneralTopology/Core.lean/declarations/exactly-one.md) | 98 | `declaration-track:a6b2d8816d0a1806b098acc9d3c88b67635cd026107e281ac88cde31193f4ecb` |
| 20 | `def` | [grey](../../../../GeneralTopology/Core.lean/declarations/grey.md) | 101 | `declaration-track:8fdc9a32aed0ffea576c80f278efcc783e468f7d1789b001d6dedb6f2d70501a` |
| 21 | `structure` | [GreyFlipCovariant](../../../../GeneralTopology/Core.lean/declarations/greyflipcovariant.md) | 104 | `declaration-track:33b8bd81b13438e2e91fafbb76c3fef03e6c9432bab3fb9f28531e609835a381` |
| 22 | `def` | [smoothGrey](../../../../GeneralTopology/Core.lean/declarations/smoothgrey.md) | 110 | `declaration-track:2a9fb484b584e8e19964931236e7188dffd1a4673bacb59a560fa2283c966ead` |
| 23 | `def` | [seededScatter](../../../../GeneralTopology/Core.lean/declarations/seededscatter.md) | 113 | `declaration-track:c231bfa1c5c631b4a5d170b24963c5c2ce0df947364b5da05b18b22c4d277425` |
| 24 | `def` | [halfsiteMarkers](../../../../GeneralTopology/Core.lean/declarations/halfsitemarkers.md) | 116 | `declaration-track:bddd6dfaff038278ad23938e3f15cb5db72fee938aae40ca013a9ddda3f07a84` |
| 25 | `structure` | [NulliantCompactification](../../../../GeneralTopology/Core.lean/declarations/nulliantcompactification.md) | 119 | `declaration-track:646217dd92c905f57623f5c4a29637b070759cb88680cd8cbe90d9d8578a3958` |
| 26 | `def` | [compactify_nulliant](../../../../GeneralTopology/Core.lean/declarations/compactify-nulliant.md) | 124 | `declaration-track:c80cb2d1206a17476f068f640eccb74dfa91962f079522b276900fc345687334` |
| 27 | `def` | [reexpand](../../../../GeneralTopology/Core.lean/declarations/reexpand.md) | 129 | `declaration-track:99a3dd2948563461b4931fb53a283b5c1170054b6bf20780f5e3e1f7b5c0e2f7` |
| 28 | `def` | [boundary_input](../../../../GeneralTopology/Core.lean/declarations/boundary-input.md) | 132 | `declaration-track:ce37f80d04918e03f272f75b2bce8a113f9f0cc9206409c91beca2963d676e68` |
| 29 | `def` | [emits_ordinary_residue](../../../../GeneralTopology/Core.lean/declarations/emits-ordinary-residue.md) | 135 | `declaration-track:5d4433904c483062c782f801baf95e748ffcb433c40532a8eb4d922628d42396` |
| 30 | `def` | [emits_partition_yaml](../../../../GeneralTopology/Core.lean/declarations/emits-partition-yaml.md) | 138 | `declaration-track:e7d180c79ecaf653754e64aeed03493a5fc3d18f87d76d5d7041b8923f37cc0b` |
| 31 | `def` | [closeHalfSiteWitness](../../../../GeneralTopology/Core.lean/declarations/closehalfsitewitness.md) | 141 | `declaration-track:5cbdfb9527a9d4b47355205e14829e33b62f01130f1c5fb48d918053c864ad74` |
| 32 | `structure` | [FrequencyCandidate](../../../../GeneralTopology/Core.lean/declarations/frequencycandidate.md) | 144 | `declaration-track:c8d0f2fb44ee4c371962cbd1eff9473839bb0531e279904298a1fac39c99fc0d` |
| 33 | `def` | [reset_candidate](../../../../GeneralTopology/Core.lean/declarations/reset-candidate.md) | 152 | `declaration-track:3b90bba341eb2488fb5950ffee368e6b961edbdb8b5f8060589bf04c95224a40` |
| 34 | `def` | [reset_frequencies](../../../../GeneralTopology/Core.lean/declarations/reset-frequencies.md) | 158 | `declaration-track:5cb4ebf233ab860bf23ed0b446304ae275fb1622a06ac204a034567d0b43040d` |
| 35 | `def` | [reference_reset_table](../../../../GeneralTopology/Core.lean/declarations/reference-reset-table.md) | 161 | `declaration-track:fa27f5896b59383c2ad92726dc9072d4db5ebad3fa8cd6732a03e11f7af1e4ac` |
| 36 | `structure` | [WitnessSemantics](../../../../GeneralTopology/Core.lean/declarations/witnesssemantics.md) | 164 | `declaration-track:1feb1467a6e587efeb020c1dee8f8c598343f8712d232630bcfbdbe2ca1a1689` |
| 37 | `structure` | [Witness](../../../../GeneralTopology/Core.lean/declarations/witness.md) | 169 | `declaration-track:f0e85b6d77d85083fc02e002bc6c1c2faba4d1f164ce80d8845de67824f27076` |
| 38 | `structure` | [AppleBand](../../../../GeneralTopology/Core.lean/declarations/appleband.md) | 173 | `declaration-track:c7abdfad33f2561c798847eb03efcda9e033cffdf76750df8bb3d712906e71fc` |
| 39 | `structure` | [ApplePayload](../../../../GeneralTopology/Core.lean/declarations/applepayload.md) | 177 | `declaration-track:59a609ddcc9a771b8e3641264091e0e944131e09f57dd4acb24e1eb11956194a` |
| 40 | `def` | [export_to_apple](../../../../GeneralTopology/Core.lean/declarations/export-to-apple.md) | 181 | `declaration-track:2ca89eed8926abccab29a0ad9a0257675dcf3c009ea10bd911f928dc8e7ab31f` |
| 41 | `def` | [witness_semantics](../../../../GeneralTopology/Core.lean/declarations/witness-semantics.md) | 184 | `declaration-track:db1a4681b73e34f75634289658e1507ce63db29007710566a45a65124316a3f0` |
| 42 | `def` | [payload_semantics](../../../../GeneralTopology/Core.lean/declarations/payload-semantics.md) | 187 | `declaration-track:ac8417566c120b06dceff63a23492c6da38eb4a814d8dd80eace13f077d428c6` |
| 43 | `structure` | [AdjacencyOperator](../../../../GeneralTopology/Core.lean/declarations/adjacencyoperator.md) | 190 | `declaration-track:9480e6413eb83e5c0899600cf8d97f7d1c4e5eaada3c8efd08018921e66d1f53` |
| 44 | `def` | [adjacencySpectrum](../../../../GeneralTopology/Core.lean/declarations/adjacencyspectrum.md) | 194 | `declaration-track:f6e363fbd6740f948c347a70594a0ba53670718603987962ef6bbd62e7203be2` |
| 45 | `structure` | [BoundaryPartition](../../../../GeneralTopology/Core.lean/declarations/boundarypartition.md) | 197 | `declaration-track:8162f399a6cc49c53104c28f3251f09fbd52494177f6263d97f41822c3bb0edd` |
| 46 | `structure` | [FiniteTubeCover](../../../../GeneralTopology/Core.lean/declarations/finitetubecover.md) | 201 | `declaration-track:3add06e03f846da6832b669f7f986bd022bab9c118443c714400e2a16bfdf601` |
| 47 | `structure` | [FinitePrismCover](../../../../GeneralTopology/Core.lean/declarations/finiteprismcover.md) | 205 | `declaration-track:7ad032695c57a5f483a896ea702febf69e74dfe5aefd288a0ba2b9fd9be9b7d1` |
| 48 | `def` | [finiteTubeCoverDefined](../../../../GeneralTopology/Core.lean/declarations/finitetubecoverdefined.md) | 209 | `declaration-track:cb511bffe594e694b807569316d960c236053dee35e0a76a9fba0d47f946090f` |
| 49 | `def` | [finitePrismCoverDefined](../../../../GeneralTopology/Core.lean/declarations/finiteprismcoverdefined.md) | 212 | `declaration-track:83c7c726d561fd1d146d81038f9c5baee55cbe9027a5772463268133e6e1c4d0` |
| 50 | `def` | [boundedNonClustering](../../../../GeneralTopology/Core.lean/declarations/boundednonclustering.md) | 215 | `declaration-track:bb7e778b2c957b660555c22752b24722ecf4c21f733b81e3c01a5fa0115b6a5a` |
| 51 | `def` | [reexpandPartition](../../../../GeneralTopology/Core.lean/declarations/reexpandpartition.md) | 218 | `declaration-track:be2629c89eda6a710a373b44a01f38097d12e9cf818a1b80717fb93318b8cd66` |
| 52 | `def` | [reexpandNulliantPartition](../../../../GeneralTopology/Core.lean/declarations/reexpandnulliantpartition.md) | 221 | `declaration-track:fbdb20a82e18329771217fe30d9a3622ee1476d8280590726ed95a87d1d4e49a` |
| 53 | `def` | [macroGrowth](../../../../GeneralTopology/Core.lean/declarations/macrogrowth.md) | 224 | `declaration-track:46fe015433c0270833250ebb13cbe1249143362687a4735c0f17b583b5822dca` |
| 54 | `def` | [greyValuesFromWitnesses](../../../../GeneralTopology/Core.lean/declarations/greyvaluesfromwitnesses.md) | 227 | `declaration-track:5ca5c5972d2dac1b30975e53b21736eae010586d7e5e35427d5c63b2b8f37e71` |
| 55 | `def` | [grey_average](../../../../GeneralTopology/Core.lean/declarations/grey-average.md) | 230 | `declaration-track:efb751d639d60a4768e88d933d5d90cf5f8c75c326b18184cf861f3ac4dc5e42` |
| 56 | `def` | [grey_cover](../../../../GeneralTopology/Core.lean/declarations/grey-cover.md) | 233 | `declaration-track:7484c79040a179838258425c3f51682aee36fcee4ddde381b0d5c40466c1a8c1` |
| 57 | `def` | [modularLociFromAdjacency](../../../../GeneralTopology/Core.lean/declarations/modularlocifromadjacency.md) | 236 | `declaration-track:91ae1e6a145b4b16efcbf84f7fbbbf5548dc3e1db6712247947665273a7826d6` |
| 58 | `def` | [modularLociFromWitnesses](../../../../GeneralTopology/Core.lean/declarations/modularlocifromwitnesses.md) | 240 | `declaration-track:55cc6a1bb353dc4d36ed69c6968c7fa2d2de120317e2e50949743d3143e8dcd8` |
| 59 | `def` | [finite](../../../../GeneralTopology/Core.lean/declarations/finite.md) | 243 | `declaration-track:34aba76f234ac53968311d35254d3cde025e17b180049974028d53b3a6e4b262` |
| 60 | `def` | [dirichlet_bit_convolution](../../../../GeneralTopology/Core.lean/declarations/dirichlet-bit-convolution.md) | 246 | `declaration-track:e5a23c57d757f57d3dcd684bd6754d55fef3c523751333889ae8a4f6d56745a5` |
| 61 | `def` | [dirichlet_mobius_bit_convolution](../../../../GeneralTopology/Core.lean/declarations/dirichlet-mobius-bit-convolution.md) | 249 | `declaration-track:46ac59f3106dfb5fc42d0e7c9955111897c9e7f0da3ed210d394da1da4a3a3f3` |
| 62 | `def` | [update_frequency](../../../../GeneralTopology/Core.lean/declarations/update-frequency.md) | 252 | `declaration-track:db705df984c7a36b41a6616036e1f5b61e80be309299a01fb4486f83fcc880c4` |
| 63 | `def` | [update_symbolic_frequency](../../../../GeneralTopology/Core.lean/declarations/update-symbolic-frequency.md) | 255 | `declaration-track:8e4d18ad2cdcd1a06578c2a985c938544526962d62b35e89d0e9de7d8754015f` |
| 64 | `def` | [reset](../../../../GeneralTopology/Core.lean/declarations/reset.md) | 258 | `declaration-track:6d20f22e3a417335395245aa26a0ef8cae5774a36cb0b827981743b0c4ed496d` |
| 65 | `structure` | [PntReferenceCalculation](../../../../GeneralTopology/Core.lean/declarations/pntreferencecalculation.md) | 261 | `declaration-track:bbddd95ba017bbe511e8fec082afb5d84eb34be26ff90badeba008fdd3d71ec7` |
| 66 | `def` | [uses_checked_theorem_ref](../../../../GeneralTopology/Core.lean/declarations/uses-checked-theorem-ref.md) | 265 | `declaration-track:87588e77aa079f2c281cbe6c0f575dfd512ecb3422efed6e38d45111c5692a76` |
| 67 | `def` | [uses_pnt_reference](../../../../GeneralTopology/Core.lean/declarations/uses-pnt-reference.md) | 268 | `declaration-track:5cf9b775e4e0f18502dcb2074582079150bfd5321fc96d027bb97001ad11fc7f` |
| 68 | `def` | [does_not_prove_pnt](../../../../GeneralTopology/Core.lean/declarations/does-not-prove-pnt.md) | 271 | `declaration-track:20a4a4bfdb4cdb65c97d174b141265ae244cb61850429b48e8adf5fab692dfeb` |
| 69 | `def` | [runtime_diagnostic_only](../../../../GeneralTopology/Core.lean/declarations/runtime-diagnostic-only.md) | 274 | `declaration-track:0a33797224eb0bbd78fe68ab0576f3e302181e1c06b29117312ac32e8c758dd7` |
| 70 | `theorem` | [symmetric_expand_zero](../../../../GeneralTopology/Core.lean/declarations/symmetric-expand-zero.md) | 277 | `result-track:60d01241670625c1731600f16a0d209f71bab24cb05d158a37a9724a540d917d` |
| 71 | `theorem` | [symmetric_expand_one](../../../../GeneralTopology/Core.lean/declarations/symmetric-expand-one.md) | 280 | `result-track:90a13a88521c2bc2ad7c4adfddfc4ed3f10adde958bb2a2816ba27f8380371e8` |
| 72 | `theorem` | [mixed_pair_maps_halfsite](../../../../GeneralTopology/Core.lean/declarations/mixed-pair-maps-halfsite.md) | 283 | `result-track:d3e42972e0a8704b8224787ad4ae3a743ae5bcf779100e407aea99515bb4a5c1` |
| 73 | `theorem` | [mixed_block_maps_to_unique_halfsite](../../../../GeneralTopology/Core.lean/declarations/mixed-block-maps-to-unique-halfsite.md) | 287 | `result-track:42faf182dd802bffdb050b4e18c40c1b51a840054941f0d25c0e3e435ecffb18` |
| 74 | `theorem` | [mixed_four_block_maps_halfsite](../../../../GeneralTopology/Core.lean/declarations/mixed-four-block-maps-halfsite.md) | 291 | `result-track:aeae522145a59ec1416a7ec5a68a4edde596244ece504b67572dbc7ef328d12b` |
| 75 | `theorem` | [grey_from_high_to_low_only](../../../../GeneralTopology/Core.lean/declarations/grey-from-high-to-low-only.md) | 298 | `result-track:a3c8620c7d43530cac8a3d48c96ea56096998ef27b4318117ec4fd095b50ddfa` |
| 76 | `theorem` | [grey_average_uses_only_high_to_low](../../../../GeneralTopology/Core.lean/declarations/grey-average-uses-only-high-to-low.md) | 302 | `result-track:effc3512ee6758a07df64f87498f5d92d7293c3233ab842057cc8e7be8adca6d` |
| 77 | `theorem` | [grey_cover_uses_only_high_to_low](../../../../GeneralTopology/Core.lean/declarations/grey-cover-uses-only-high-to-low.md) | 306 | `result-track:615be5d407f1110d85e11aa0f15f417a758c63b2ff481ed7c19274c389e249ce` |
| 78 | `theorem` | [grey_ignores_zero_to_one_and_static_bits](../../../../GeneralTopology/Core.lean/declarations/grey-ignores-zero-to-one-and-static-bits.md) | 310 | `result-track:7f4f0f29ee13e541ed8a1799261025b3e78639736f8a18217df3fcfab94b41ae` |
| 79 | `theorem` | [zero_to_one_not_grey](../../../../GeneralTopology/Core.lean/declarations/zero-to-one-not-grey.md) | 328 | `result-track:6e84e1cdbdb3277824a43cc92f3defe6901cd0dbc68d15d01ebe412a2700341d` |
| 80 | `theorem` | [static_not_grey](../../../../GeneralTopology/Core.lean/declarations/static-not-grey.md) | 334 | `result-track:e47984167a86de0fd534008702d8a3086f0e33e84a98f7f96926fa67cf70b5c9` |
| 81 | `theorem` | [projection_state_trichotomy](../../../../GeneralTopology/Core.lean/declarations/projection-state-trichotomy.md) | 346 | `result-track:eaaebbca11b5811305ec607d361891ffd513f20f2023fd29988dcc484a627093` |
| 82 | `theorem` | [open_iff_positive_signed_adjacency](../../../../GeneralTopology/Core.lean/declarations/open-iff-positive-signed-adjacency.md) | 354 | `result-track:02cf12b6f88815fa6c12f69f12e21f4664bf291d4502d456097b7d54b6779cc7` |
| 83 | `theorem` | [close_requires_explicit_nullification](../../../../GeneralTopology/Core.lean/declarations/close-requires-explicit-nullification.md) | 358 | `result-track:db6d94be926b1dd1d34ae6316ddadc17fd16d0bd99ffffdaa9fe6925f44ecc6d` |
| 84 | `theorem` | [all_zero_without_close_is_nulliant](../../../../GeneralTopology/Core.lean/declarations/all-zero-without-close-is-nulliant.md) | 363 | `result-track:4cdaa8b9f60568bb9679a6a47a6ccfbf5433204813010837795a20af68e894e4` |
| 85 | `theorem` | [zero_frame_implies_nulliant_unless_explicit_close](../../../../GeneralTopology/Core.lean/declarations/zero-frame-implies-nulliant-unless-explicit-close.md) | 373 | `result-track:af3e489ddfa0688ef3bf0370bf2e964aceb394f0f4183a26b8dff3ff96229cd4` |
| 86 | `theorem` | [close_maps_to_halfsite_before_termination](../../../../GeneralTopology/Core.lean/declarations/close-maps-to-halfsite-before-termination.md) | 377 | `result-track:93296e2357435bfeffbc4b149e81b78ae92e4d33541a4cbc0e39431fdfbe3a6d` |
| 87 | `theorem` | [ordinary_residue_only_open](../../../../GeneralTopology/Core.lean/declarations/ordinary-residue-only-open.md) | 382 | `result-track:75226fee2f8399f20d4b8b0102b97c6e436b6a2a90b8b19d1f2de6077bdebfdb` |
| 88 | `theorem` | [close_emits_no_ordinary_residue](../../../../GeneralTopology/Core.lean/declarations/close-emits-no-ordinary-residue.md) | 387 | `result-track:e42750e83c3e13fb427271f5e462c77b629c7754c6eda638c5b80e9b6b1966ed` |
| 89 | `theorem` | [nulliant_partition_roundtrip](../../../../GeneralTopology/Core.lean/declarations/nulliant-partition-roundtrip.md) | 395 | `result-track:41ae4a905d887fe420a6e979b53dd99feb47e6336ba30144093b780687defa21` |
| 90 | `theorem` | [nulliant_yaml_reexpansion_roundtrip](../../../../GeneralTopology/Core.lean/declarations/nulliant-yaml-reexpansion-roundtrip.md) | 399 | `result-track:6fd1cc5de60f5b060f87a7350229779145380377d6b812fcc836a206ff370e33` |
| 91 | `theorem` | [nulliant_partition_preserves_zero_one_halfsite](../../../../GeneralTopology/Core.lean/declarations/nulliant-partition-preserves-zero-one-halfsite.md) | 403 | `result-track:00306df1b2a68cd1e57c80b63c22e1e8da157a59e7668b65d0a43335e1b26757` |
| 92 | `theorem` | [symbolic_frequency_reset](../../../../GeneralTopology/Core.lean/declarations/symbolic-frequency-reset.md) | 407 | `result-track:2f2fe6c68b4d53710d96abb3d355c522fbaaa47ee44c0ab92bb3bd33e13a5a44` |
| 93 | `theorem` | [frequency_reset_restores_reference_table](../../../../GeneralTopology/Core.lean/declarations/frequency-reset-restores-reference-table.md) | 411 | `result-track:d1a7403e3f7b9ffd29d5d00d0e913a8e43b83083474652c9aa528037be9643fa` |
| 94 | `theorem` | [bit_convolution_finite](../../../../GeneralTopology/Core.lean/declarations/bit-convolution-finite.md) | 415 | `result-track:567e7b6c9ebe90de281d568e9b5cd522f1ac8c162ee5afd33c4e75e7c046104c` |
| 95 | `theorem` | [finite_bit_convolution_is_finite](../../../../GeneralTopology/Core.lean/declarations/finite-bit-convolution-is-finite.md) | 420 | `result-track:7e07779f3a26e2dfbf56f9cb8a9984055b04b1bdfc0785c8474962a4030f2594` |
| 96 | `theorem` | [frequency_update_symbolic_only](../../../../GeneralTopology/Core.lean/declarations/frequency-update-symbolic-only.md) | 425 | `result-track:bf67179661d79fd1a6154c0c0156bdbdeb4ec998d42629ad3d5caf00d6a2a4b5` |
| 97 | `theorem` | [symbolic_frequency_reference_immutable](../../../../GeneralTopology/Core.lean/declarations/symbolic-frequency-reference-immutable.md) | 434 | `result-track:ffedebf61aebd2d474fc8e8d028fed903848504c72cbb002d08dfd8f16d24f05` |
| 98 | `theorem` | [frequency_candidate_update_cites_boundary_witness](../../../../GeneralTopology/Core.lean/declarations/frequency-candidate-update-cites-boundary-witness.md) | 443 | `result-track:4abe5cf4cd364d18f317beee0c45c58dd39020508bc98883161c25d7c28f0676` |
| 99 | `theorem` | [reset_restores_reference_frequency](../../../../GeneralTopology/Core.lean/declarations/reset-restores-reference-frequency.md) | 450 | `result-track:a58e5ff31c84d69cb368cf1c9ebbb10cb2d4fd330787635a115370bc2309822d` |
| 100 | `theorem` | [pnt_reference_is_metadata](../../../../GeneralTopology/Core.lean/declarations/pnt-reference-is-metadata.md) | 454 | `result-track:39d7023e46562df649e528009c31e2d20b9c849bad620daef59ca1d8e042dd34` |
| 101 | `theorem` | [pnt_cover_does_not_prove_pnt](../../../../GeneralTopology/Core.lean/declarations/pnt-cover-does-not-prove-pnt.md) | 459 | `result-track:5b5f736f2fd901137d90b7588b92d6cd2ad86576869f41d1c573daaaaf406f89` |
| 102 | `theorem` | [apple_band_semantics_read_only](../../../../GeneralTopology/Core.lean/declarations/apple-band-semantics-read-only.md) | 464 | `result-track:8c75dd63121991d726df0e89766ebea77621984df0620277f1949e1ee3956604` |
| 103 | `theorem` | [apple_authority_cover_read_only](../../../../GeneralTopology/Core.lean/declarations/apple-authority-cover-read-only.md) | 474 | `result-track:91f584fb761b46713e202baa69b7cf4801b2f811f64e0834b8402e0aff2ecefa` |
| 104 | `theorem` | [export_preserves_witness_semantics](../../../../GeneralTopology/Core.lean/declarations/export-preserves-witness-semantics.md) | 484 | `result-track:def1fae676d2214ff4e0e0b5ae7b4fe28fec7fb35f4b403610e76574e607c845` |
| 105 | `theorem` | [apple_export_preserves_symbolic_frequency_semantics](../../../../GeneralTopology/Core.lean/declarations/apple-export-preserves-symbolic-frequency-semantics.md) | 494 | `result-track:f5157008296992a7b65313d7b6d1245a1ab0eb278e5d6de1772eaae0925dda37` |
| 106 | `theorem` | [seeded_scatter_preserves_boundary](../../../../GeneralTopology/Core.lean/declarations/seeded-scatter-preserves-boundary.md) | 504 | `result-track:2b0a0f3b13deb1db608e104c16a91d545fcedc894a57c906261f7033bfc75cc9` |
| 107 | `theorem` | [grey_smoothing_preserves_witness_support](../../../../GeneralTopology/Core.lean/declarations/grey-smoothing-preserves-witness-support.md) | 508 | `result-track:ba44bb21def148d1cd6cf667f82fd3425465c131bceca8bfcb965ecc31df3227` |
| 108 | `theorem` | [nulliant_compactification_preserves_halfsite_markers](../../../../GeneralTopology/Core.lean/declarations/nulliant-compactification-preserves-halfsite-markers.md) | 512 | `result-track:8700505ec603191b8bbe2df385726bfe0e68cf8064b8f8ec4ad525cb789ff0fb` |
| 109 | `theorem` | [nulliant_partition_preserves_halfsite_markers](../../../../GeneralTopology/Core.lean/declarations/nulliant-partition-preserves-halfsite-markers.md) | 516 | `result-track:33a1ebe950c7192c635f4fdd40dda61b738e2d87a2777a78808f4b120f410c60` |
| 110 | `theorem` | [grey_values_reconstructible_from_witness_set](../../../../GeneralTopology/Core.lean/declarations/grey-values-reconstructible-from-witness-set.md) | 520 | `result-track:6b6f6b4088bc8b038cd5e622a11e31ba76782533b8921caacf4be62502aaaf0b` |
| 111 | `theorem` | [modular_loci_reconstructible_from_witnesses](../../../../GeneralTopology/Core.lean/declarations/modular-loci-reconstructible-from-witnesses.md) | 524 | `result-track:fbc3d4aeceee121c3e0f933b0b568e369f28c110b62da8c82a6b2b78f787935d` |
| 112 | `theorem` | [modular_loci_reconstructible_from_adjacency_operator](../../../../GeneralTopology/Core.lean/declarations/modular-loci-reconstructible-from-adjacency-operator.md) | 528 | `result-track:fe3c2b89029d5e7834b69377ed92bfca49c1532c74ea1489bb651663536cfdf1` |
| 113 | `theorem` | [adjacency_spectrum_determined_by_declared_operator](../../../../GeneralTopology/Core.lean/declarations/adjacency-spectrum-determined-by-declared-operator.md) | 534 | `result-track:3bd2571a80663e88a2139c48d6f8d0488116738e19120cf4104aeebd88c86347` |
| 114 | `theorem` | [symmetric_bit_expansion_has_abelian_macro_growth](../../../../GeneralTopology/Core.lean/declarations/symmetric-bit-expansion-has-abelian-macro-growth.md) | 538 | `result-track:f6648e9f9d838738a1c067de38cf4d09b64ecd5863b1c52a331e471631a05eba` |
| 115 | `theorem` | [or_explicit_nonabelian_counterexample](../../../../GeneralTopology/Core.lean/declarations/or-explicit-nonabelian-counterexample.md) | 543 | `result-track:a9466daafece5d71640de853257c5f61169f06caa0ed01e5593204b14982d686` |
| 116 | `theorem` | [finite_tube_cover_defined](../../../../GeneralTopology/Core.lean/declarations/finite-tube-cover-defined.md) | 546 | `result-track:88ffa76635afb371db21d8ffc549ac9d2c5921dd110da3cade08ffd8aec93b5c` |
| 117 | `theorem` | [finite_prism_cover_defined](../../../../GeneralTopology/Core.lean/declarations/finite-prism-cover-defined.md) | 550 | `result-track:4dbb901ccb84046dd5d59a3171a22700f94531c48a6258795fb24eaf6a9e83ab` |
| 118 | `theorem` | [bit_partition_non_clustering](../../../../GeneralTopology/Core.lean/declarations/bit-partition-non-clustering.md) | 554 | `result-track:8192fa715417bb46698acc9edfc1dfffddb6b9416af0ce980c253903d40e0672` |
| 119 | `theorem` | [finite_partition_nonclustering_preserved_under_reexpansion](../../../../GeneralTopology/Core.lean/declarations/finite-partition-nonclustering-preserved-under-reexpansion.md) | 559 | `result-track:ec6a23894cb0d016681ef68af734bd5a3a16c646455fcc81a822482d9b337872` |
| 120 | `theorem` | [non_clustering_preserved_under_reexpansion](../../../../GeneralTopology/Core.lean/declarations/non-clustering-preserved-under-reexpansion.md) | 567 | `result-track:406f805b4118738af843a78616760e7c714f35e4f5bcb8ee6a1fffe0f4c96db5` |
| 121 | `theorem` | [non_clustering_preserved_under_nulliant_reexpansion](../../../../GeneralTopology/Core.lean/declarations/non-clustering-preserved-under-nulliant-reexpansion.md) | 575 | `result-track:f66d8efa9cab1defdded0925f13d3195a34f5a04152ab4f07b9dc8a023391145` |
| 122 | `theorem` | [residue_emission_by_state](../../../../GeneralTopology/Core.lean/declarations/residue-emission-by-state.md) | 583 | `result-track:6e60d473b5bb44bc10aba1744595754db8a9d029af65ad81b7fcf842827a559d` |
| 123 | `theorem` | [nulliant_emits_partition_yaml](../../../../GeneralTopology/Core.lean/declarations/nulliant-emits-partition-yaml.md) | 591 | `result-track:20b3d0e8c343d2de3488fbdc004b90f86835c58a11ab130c5dc12ff80d1f0e5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c8c7fa7bad3a07ac57464839417790d7b81442f069b95ca82e24af02dc32db5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Core/Variant279fd62eda6d66dee59f5ae0ec9ce33e95f6a6793163754db9cd8df906814463.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
