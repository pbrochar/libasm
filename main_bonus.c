/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_bonus.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pbrochar <pbrochar@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/16 18:21:49 by pbrochar          #+#    #+#             */
/*   Updated: 2021/04/16 18:25:44 by pbrochar         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	t_list *new;
	t_list *temp;
	new = NULL;
	
	ft_list_push_front(&new, (void *)"coucou");
	ft_list_push_front(&new, (void *)"je");
	ft_list_push_front(&new, (void *)"suis");
	ft_list_push_front(&new, (void *)"une");
	ft_list_push_front(&new, (void *)"liste");
	ft_list_push_front(&new, (void *)"chaine");
	temp = new;
	printf("print list : \n");
	while (temp)
	{
		printf("data = %s\n", temp->data);
		temp = temp->next;
	}
	printf("list size = %d\n", ft_list_size(new));
}