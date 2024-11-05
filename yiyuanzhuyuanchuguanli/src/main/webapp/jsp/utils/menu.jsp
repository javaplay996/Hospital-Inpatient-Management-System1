<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
			{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"医生管理",
			            "menuJump":"列表",
			            "tableName":"yisheng"
			        }
			    ],
			    "menu":"医生管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"护士管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"护士管理"
			}
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"病人管理",
                        "menuJump":"列表",
                        "tableName":"bingren"
                    }
                ],
                "menu":"病人管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"床位管理",
                        "menuJump":"列表",
                        "tableName":"chuangwei"
                    }
                ],
                "menu":"床位管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"药品管理",
                        "menuJump":"列表",
                        "tableName":"yaopin"
                    }
                ],
                "menu":"药品管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"医嘱管理",
                        "menuJump":"列表",
                        "tableName":"yizhu"
                    }
                ],
                "menu":"医嘱管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除"
                        ],
                        "menu":"住院管理",
                        "menuJump":"列表",
                        "tableName":"zhuyuan"
                    }
                ],
                "menu":"住院管理"
            }
			,{
			    "child":[
					{
					    "buttons":[
					        "查看",
					        "新增",
					        "修改",
					        "删除"
					    ],
					    "menu":"患病类型管理",
					    "menuJump":"列表",
					    "tableName":"dictionaryHuanbing"
					},
					{
					    "buttons":[
					        "查看",
					        "新增",
					        "修改",
					        "删除"
					    ],
					    "menu":"药品类型管理",
					    "menuJump":"列表",
					    "tableName":"dictionaryYaopin"
					},
					{
					    "buttons":[
					        "查看",
					        "新增",
					        "修改",
					        "删除"
					    ],
					    "menu":"医嘱类型管理",
					    "menuJump":"列表",
					    "tableName":"dictionaryYizhu"
					}
			    ],
			    "menu":"类型管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"住院消费管理",
			            "menuJump":"列表",
			            "tableName":"xiaofeijilu"
			        }
			    ],
			    "menu":"住院消费管理"
			}
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,
	{
	    "backMenu":[
			{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "修改",
	                        "删除"
	                    ],
	                    "menu":"病人管理",
	                    "menuJump":"列表",
	                    "tableName":"bingren"
	                }
	            ],
	            "menu":"病人管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"床位管理",
	                    "menuJump":"列表",
	                    "tableName":"chuangwei"
	                }
	            ],
	            "menu":"床位管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "修改"
	                    ],
	                    "menu":"药品管理",
	                    "menuJump":"列表",
	                    "tableName":"yaopin"
	                }
	            ],
	            "menu":"药品管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "新增",
	                        "修改",
	                        "删除"
	                    ],
	                    "menu":"医嘱管理",
	                    "menuJump":"列表",
	                    "tableName":"yizhu"
	                }
	            ],
	            "menu":"医嘱管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增"
	                    ],
	                    "menu":"住院管理",
	                    "menuJump":"列表",
	                    "tableName":"zhuyuan"
	                }
	            ],
	            "menu":"住院管理"
	        }
			
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"医生",
	    "tableName":"yisheng"
	}
	,
	{
	    "backMenu":[
			{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"病人管理",
	                    "menuJump":"列表",
	                    "tableName":"bingren"
	                }
	            ],
	            "menu":"病人管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看",
	                        "新增",
	                        "修改"
	                    ],
	                    "menu":"床位管理",
	                    "menuJump":"列表",
	                    "tableName":"chuangwei"
	                }
	            ],
	            "menu":"床位管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"药品管理",
	                    "menuJump":"列表",
	                    "tableName":"yaopin"
	                }
	            ],
	            "menu":"药品管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "执行"
	                    ],
	                    "menu":"医嘱管理",
	                    "menuJump":"列表",
	                    "tableName":"yizhu"
	                }
	            ],
	            "menu":"医嘱管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "出院"
	                    ],
	                    "menu":"住院管理",
	                    "menuJump":"列表",
	                    "tableName":"zhuyuan"
	                }
	            ],
	            "menu":"住院管理"
	        }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改"
			            ],
			            "menu":"住院消费管理",
			            "menuJump":"列表",
			            "tableName":"xiaofeijilu"
			        }
			    ],
			    "menu":"住院消费管理"
			}
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"护士",
	    "tableName":"yonghu"
	}
];

var hasMessage = '';
