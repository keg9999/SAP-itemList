using ItemService from './item-service'; //앞에 만들어두었던 './item-service'를 참조 

annotate ItemService.Items with {	//Items 엔티티에 어노테이션을 달고, Fiori 요소들을 레블링함. 
	Code        @title: 'Code';
	name        @title: 'Name';
	item01      @title: 'Item01';
    item02      @title: 'Item02';
    item03      @title: 'Item03';
    item04      @title: 'Item04';
    item05      @title: 'Item05';
    item06      @title: 'Item06';
    item07      @title: 'Item07';
    item08      @title: 'Item08';
    item09      @title: 'Item09';
    item10      @title: 'Item10';
}

annotate ItemService.Items with @(
	UI: {
		HeaderInfo: {				//HeaderInfo: 오브젝트 페이지(오프젝트 한 개 클릭했을 때)에서 헤더 (상단부분) 정보 
			TypeName: 'Item',
			TypeNamePlural: 'Items',
			Title          : {		//제목과 부제목 정의 
                $Type : 'UI.DataField',
                Value : name
            },
			Description : {
				$Type: 'UI.DataField',
				Value: Code
			}
		},
		SelectionFields: [name],	//SelectionFields: 검색할 필드
		LineItem: [					//LineItem: 목록 컬럼 설정. 보통 Value로 정의됨. 
			{Value: Code},
			{Value: name},
            {Value: item01},
            {Value: item02},
            {Value: item03},
            {Value: item04},
            {Value: item05},
            {Value: item06},
            {Value: item07},
            {Value: item08},
            {Value: item09},
            {Value: item10},
		],

		Facets: [					//Facets: 오브젝트 페이지의 내용 정의
			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'}
		],
		FieldGroup#Main: {
			Data: [
			    {Value: Code},
		    	{Value: name},
                {Value: item01},
                {Value: item02},
                {Value: item03},
                {Value: item04},
                {Value: item05},
                {Value: item06},
                {Value: item07},
                {Value: item08},
                {Value: item09},
                {Value: item10},
			]
		}
	},
);
