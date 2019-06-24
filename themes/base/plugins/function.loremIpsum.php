<?php

/**
 * smarty_function_lorumIpsum
 * Returns $params['number'] paragraphs of lorum ipsum
 *
 * @param array $params
 *   'number ' => the number of paragraphs required - defaults to 1
 * @param object $template  the template object
 */
function smarty_function_loremIpsum($params, $template) {
	$loremIpsum = [
		'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Beatus sibi videtur esse moriens. Nunc omni virtuti vitium contrario nomine			opponitur. Cum id fugiunt, re eadem defendunt, quae Peripatetici, verba. Quorum sine causa fieri nihil putandum est. Duo Reges: constructio			interrete. Teneo, inquit, finem illi videri nihil dolere. Restatis igitur vos; Dolere malum est: in crucem qui agitur, beatus esse non potest.		Ostendit pedes et pectus. Tum Quintus: Est plane, Piso, ut dicis, inquit. Nihil enim iam habes, quod ad corpus referas; Stuprata per vim Lucretia a regis filio testata civis se ipsa interemit.' ,
		'Quid enim me prohiberet Epicureum esse, si probarem, quae ille diceret? Sic enim censent, oportunitatis esse beate vivere. At ille non pertimuit saneque fidenter: Istis quidem ipsis verbis, inquit; Quod vestri non item. An, partus ancillae sitne in fructu habendus, disseretur inter principes civitatis, P. Quarum ambarum rerum cum medicinam pollicetur, luxuriae licentiam pollicetur. Hoc non est positum in nostra actione.',
		'Sin kakan malitiam dixisses, ad aliud nos unum certum vitium consuetudo Latina traduceret. Nunc de hominis summo bono quaeritur; Quae est igitur causa istarum angustiarum? Non quaeritur autem quid naturae tuae consentaneum sit, sed quid disciplinae. Videamus animi partes, quarum est conspectus illustrior; Sed ne, dum huic obsequor, vobis molestus sim.',
		'Quamquam te quidem video minime esse deterritum. Quid adiuvas? Legimus tamen Diogenem, Antipatrum, Mnesarchum, Panaetium, multos alios in primisque familiarem nostrum Posidonium. Estne, quaeso, inquam, sitienti in bibendo voluptas? Si mala non sunt, iacet omnis ratio Peripateticorum. Sed quanta sit alias, nunc tantum possitne esse tanta. Ergo ita: non posse honeste vivi, nisi honeste vivatur?',
		'Haec para/doca illi, nos admirabilia dicamus. Si enim ad populum me vocas, eum. Piso, familiaris noster, et alia multa et hoc loco Stoicos irridebat: Quid enim? Quae quidem sapientes sequuntur duce natura tamquam videntes; Paria sunt igitur. Similiter sensus, cum accessit ad naturam, tuetur illam quidem, sed etiam se tuetur; An hoc usque quaque, aliter in vita? Huius ego nunc auctoritatem sequens idem faciam. Age, inquies, ista parva sunt. Dolere malum est: in crucem qui agitur, beatus esse non potest.',
		'Hanc ergo intuens debet institutum illud quasi signum absolvere. Ad eos igitur converte te, quaeso. Quae duo sunt, unum facit. Ita enim vivunt quidam, ut eorum vita refellatur oratio. Certe nihil nisi quod possit ipsum propter se iure laudari. Nunc haec primum fortasse audientis servire debemus. Quid, de quo nulla dissensio est?',
		'Haec quo modo conveniant, non sane intellego. Haec dicuntur inconstantissime. Haec et tu ita posuisti, et verba vestra sunt. Si est nihil nisi corpus, summa erunt illa: valitudo, vacuitas doloris, pulchritudo, cetera. Putabam equidem satis, inquit, me dixisse. Illa argumenta propria videamus, cur omnia sint paria peccata.',
		'Quid de Platone aut de Democrito loquar? Sumenda potius quam expetenda. Hoc loco tenere se Triarius non potuit. Negabat igitur ullam esse artem, quae ipsa a se proficisceretur; Qua igitur re ab deo vincitur, si aeternitate non vincitur? Non igitur potestis voluptate omnia dirigentes aut tueri aut retinere virtutem.',
		'Illis videtur, qui illud non dubitant bonum dicere -; Ad quorum et cognitionem et usum iam corroborati natura ipsa praeeunte deducimur. Prioris generis est docilitas, memoria; Hosne igitur laudas et hanc eorum, inquam, sententiam sequi nos censes oportere? Tamen a proposito, inquam, aberramus.',
		'Si stante, hoc natura videlicet vult, salvam esse se, quod concedimus; Hoc etsi multimodis reprehendi potest, tamen accipio, quod dant. Tu enim ista lenius, hic Stoicorum more nos vexat. Aliter autem vobis placet. Egone quaeris, inquit, quid sentiam? Quis est tam dissimile homini.'
	];

	shuffle($loremIpsum);
	$number = empty($params['number'])?1:$params['number'];
	$result = [];
	$count = count($loremIpsum);
	for ($i = 0; $i < $number; $i++) {
		$result[] = $loremIpsum[$i % $count];
	}
	return '<p>'.implode('</p><p>', $result).'</p>';
}

