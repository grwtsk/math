-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedMinors.Variantcf3552096336e0d2a1d488971e86c5d0715e19924f3532815b50b7496064eb70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf3552096336e0d2a1d488971e86c5d0715e19924f3532815b50b7496064eb70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OrderedMinors.Variantcf3552096336e0d2a1d488971e86c5d0715e19924f3532815b50b7496064eb70","mathematical_subject":"Foundations.Unclassified","original_sha256":"cf3552096336e0d2a1d488971e86c5d0715e19924f3532815b50b7496064eb70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/packet-publication-unit/source/cf3552096336e0d2a1d488971e86c5d0715e19924f3532815b50b7496064eb70/Grassmannian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors
import FormalResearch.PositiveAtlas.Grassmannian.Plucker24
import FormalResearch.PositiveAtlas.Grassmannian.Fixtures
import FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures
import FormalResearch.PositiveAtlas.Grassmannian.RecognitionFixtures

/-!
# Positive-Grassmannian realization program

The first layer contains actual ordered determinants, row-change gauge laws,
normalized Gr(2,4) coordinate recognition, full-rank pivot existence,
projective recognition for actual full-rank frames, and obstruction fixtures.

The generic Positive Atlas remains independent of this specialization. Abstract
Pluecker-tuple realizability, network realization, determinantal analysis,
certificate-preserving recognition, and intrinsic/global coverage remain
separately tracked obligations. Recognition of actual full-rank row spaces
is not the full Atlas certificate equivalence.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderedMinors.Variantcf3552096336e0d2a1d488971e86c5d0715e19924f3532815b50b7496064eb70

